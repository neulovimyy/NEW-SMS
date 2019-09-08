/**
 *  Zid edits
 */


$(document).ready(function() {	
	
	/*initialize the validator */
	$('#submit_form').bootstrapValidator({
		framework: 'bootstrap',
    	message: 'This value is not valid',
    	icon: {
            valid: 'glyphicon glyphicon-ok',	
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
              },
        fields: {
        	name: {
                validators: {
                    notEmpty: {
                        message: 'This field is required'
                    }
                }
            },
            dateTo: {
                validators: {
                    notEmpty: {
                        message: 'This field is required'
                    },
                    date : {
						format : 'MM/DD/YYYY',
						min : 'dateFrom',
						message : 'The end date is not a valid'
					}
                }
            },
            dateFrom: {
                validators: {
                    notEmpty: {
                        message: 'This field is required'
                    },
                    date : {
						format : 'MM/DD/YYYY',
						max : 'dateTo',
						message : 'The start date is not a valid'
					}
                }
            },
            employeeShare: {
                validators: {
                    notEmpty: {
                        message: 'This field is required'
                    },
                    numeric: {
                    	message: 'invalid number format'
                    }
                }
            },
            companyShare: {
                validators: {
                    notEmpty: {
                        message: 'This field is required'
                    },
                    numeric: {
                    	message: 'invalid number format'
                    }
                }
            },
            status:{
            	validators:{
            		/*callback:{
            			callback: function(value, validator, $field){
            				var id = $('#id').val();
            				if(id == ""){
            					id = null;
            				}
            				alert($field.val());
            				if($field.val() == 0){
            					var lol = payrollDWRService.isSSSStatus(id);
            					alert(lol);
            					payrollDWRService.isSSSStatus(id, function(data){
            						alert("g");
            						if(data){
            							showErrorMessage($field.val(), true, $field, "There should be at least one active.");
            						}else{
            							showErrorMessage($field.val(), false, $field, "");
            						}
            					});
            					
            				}
            				
            			}
            		}*/
            	}
            }
    	
        }
   }).on('success.field.fv', function(e, data) {
       if (data.field === 'dateFrom' && !data.fv.isValidField('dateTo')) {
           // We need to revalidate the end date
           data.fv.revalidateField('dateTo');
       }

       if (data.field === 'dateTo' && !data.fv.isValidField('dateFrom')) {
           // We need to revalidate the start date
           data.fv.revalidateField('dateFrom');
       }
   });
	
	//para malagyan ng name attributes ung initial data na na-fetch from database 
	initSSSTable();

	//jquery for adding a form dynamically
	$('#add-sss-template').on('click', function() {
		var body = $('#sss-table-body .scrollable');
		body.append($('#sss-table-template').html());
		initSSSTable();
	});
	
	
	function initSSSTable() {
		$('#sss-table-body .scrollable .sss-table').each(function(i) {
			$(this).find('.sssLow').attr('name','sss['+i+'].sssLow');
			$(this).find('.sssHigh').attr('name','sss['+i+'].sssHigh');
			$(this).find('.monthlyCredit').attr('name','sss['+i+'].monthlyCredit');
			$(this).find('.employeeShare').attr('name','sss['+i+'].employeeShare');
			$(this).find('.companyShare').attr('name','sss['+i+'].companyShare');
			$(this).find('.ecAmount').attr('name','sss['+i+'].ecAmount');
			$(this).find('.detailsId').attr('name','sss['+i+'].detailsId');
			$(this).find('.sssFk').attr('name','sss['+i+'].sss');
			
			$('#submit_form').bootstrapValidator('addField', $(this).find('.sssLow').attr('name'), {
				
				validators: {
					notEmpty: {
						message: 'Field is required.'
					},
					numeric:{
						message: 'Invalid number format'
					}
				}
			});
			$('#submit_form').bootstrapValidator('addField', $(this).find('.sssHigh').attr('name'), {
				validators: {
					notEmpty: {
						message: 'Field is required.'
					},
					numeric:{
						message: 'Invalid number format'
					}
				}
			});
			$('#submit_form').bootstrapValidator('addField', $(this).find('.monthlyCredit').attr('name'), {
				validators: {
					notEmpty: {
						message: 'Field is required.'
					},
					numeric:{
						message: 'Invalid number format'
					}
				}
			});
			$('#submit_form').bootstrapValidator('addField', $(this).find('.ecAmount').attr('name'), {
				validators: {
					notEmpty: {
						message: 'Field is required.'
					},
					numeric:{
						message: 'Invalid number format'
					}
				}
			});
			
		});
	}
	
	//this is for the delete button on each form rows
	$('#sss-table-body').on('click', '.delete-sss-template', function() {
		var row = $(this).parents('div.sss-table');
		row.remove();
		
		initSSSTable();
	});
	$('#sss-table-body').on('click', '.delete-data', function() {
		initSSSTable();
	});
	
	//this is the modal for the delete confirmation
	$('#confirm').on('show.bs.modal', function(e) {
		
	    $(this).find('.btn-ok').attr('href', $(e.relatedTarget).data('href'));
	});
	
	//the datepicker jquery with an event function on changedate incase invalid ung input depending on the other date input fields
	$('#dateRangeFrom').datepicker({
	      autoclose: true
	}).on('changeDate', function(e) {
		$('#submit_form').formValidation('revalidateField', 'dateFrom');
	});
	$('#dateRangeTo').datepicker({
		autoclose: true
	}).on('changeDate', function(e) {
		$('#submit_form').formValidation('revalidateField', 'dateTo');
	});
});