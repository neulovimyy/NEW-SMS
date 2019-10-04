
$(document).ready(function(){
	
	$('#birthDate').datepicker({
		format: 'mm/dd/yyyy',
		endDate: '-24h'
		}).on('changeDate', function(e) {
		$('#save-student').formValidation('revalidateField', 'birthDate');
		
		});
	$('#save-student').bootstrapValidator({
		framework: 'bootstrap',
    	message: 'This value is not valid.',
    	feedbackIcons : {
            valid: 'glyphicon glyphicon-ok-sign',	
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        excluded: [':disabled',':hidden'],
        fields: {
        	firstName: {
                validators: {
                    notEmpty: {
                        message: 'Please fill out this field'
                    }
                }
            },
        	
            middleName: {
                validators: {
                    notEmpty: {
                        message: 'Please fill out this field'
                    }
                }
        	},
        	
        	lastName: {
                validators: {
                    notEmpty: {
                        message: 'Please fill out this field'
                    }
                }
        	},
        	
        	birthDate: {
                validators: {
                    notEmpty: {
                        message: 'Please fill out this field'
                    },
                    date: {
                        format: 'MM/DD/YYYY',
                        message: 'Invalid Date '
                    }
                }
        	},
        	
        	civilStatus: {
                validators: {
                    notEmpty: {
                        message: 'Please fill out this field'
                    }
                }
        	},
        	
        	gender: {
                validators: {
                    notEmpty: {
                        message: 'Please fill out this field'
                    }
                }
        	},
        	
        	mobileNum: {
                validators: {
                    notEmpty: {
                        message: 'Please fill out this field'
                    }
                }
        	},
        	placeOfBirth:{
        		validators: {
                    notEmpty: {
                        message: 'Please fill out this field'
                    }
                }
        	},
        	nationality:{
        		validators: {
                    notEmpty: {
                        message: 'Please fill out this field'
                    }
                }
        	},
        	presentAddress: {
                validators: {
                    notEmpty: {
                        message: 'Please fill out this field'
                    }
                }
        	},
        	
        	permanentAddress: {
                validators: {
                    notEmpty: {
                        message: 'Please fill out this field'
                    }
                }
        	},
        	studentAcademicFile: {
        		validators: {
        			notEmpty: {
                        message: 'Please fill out this field'
                    },
                    file: {
                    	extension: 'pdf,docx',
                        type: 'application/pdf,application/msword',
                        maxSize: 1024 * 976,
                        message: 'The selected file is not valid'
                    }
                }
        	},
        	emailAddress: {
				validators : {
					notEmpty : {
						message : 'Email should not be empty'
					},
					emailAddress : {
						message : 'This is not a valid email address'
					}
				}
			},
			motherName: {
                validators: {
                    notEmpty: {
                        message: 'Please fill out this field'
                    }
                }
        	},
        	fatherName: {
                validators: {
                    notEmpty: {
                        message: 'Please fill out this field'
                    }
                }
        	},
        	guardianName: {
                validators: {
                    notEmpty: {
                        message: 'Please fill out this field'
                    }
                }
        	},
        	motherOccupation: {
                validators: {
                    notEmpty: {
                        message: 'Please fill out this field'
                    }
                }
        	},
        	fatherOccupation: {
                validators: {
                    notEmpty: {
                        message: 'Please fill out this field'
                    }
                }
        	},
        	motherAddress: {
                validators: {
                    notEmpty: {
                        message: 'Please fill out this field'
                    }
                }
        	},
        	motherPhone: {
                validators: {
                    notEmpty: {
                        message: 'Please fill out this field'
                    }
                }
        	},
        	fatherAddress: {
                validators: {
                    notEmpty: {
                        message: 'Please fill out this field'
                    }
                }
        	},
        	fatherPhone: {
                validators: {
                    notEmpty: {
                        message: 'Please fill out this field'
                    }
                }
        	},
        	motherAddress: {
                validators: {
                    notEmpty: {
                        message: 'Please fill out this field'
                    }
                }
        	}
         }
	});
	
	//para malagyan ng name attributes ung initial data na na-fetch from database 
	initEducBgTable();
	
	//jquery for adding a form dynamically
	$('#add-educbg-template').on('click', function() {
		var body = $('#educbg-table-body .scrollable');
		body.append($('#educbg-table-template').html());
		initEducBgTable();
	});
	
	function initEducBgTable() {
		$('#educbg-table-body .scrollable .educbg-table').each(function(i) {
			$(this).find('.schoolLevel').attr('name','educationalBackground['+i+'].schoolLevel');
			$(this).find('.schoolName').attr('name','educationalBackground['+i+'].schoolName');
			$(this).find('.years').attr('name','educationalBackground['+i+'].years');
			$(this).find('.inclusiveDates').attr('name','educationalBackground['+i+'].inclusiveDates');
			$(this).find('.schoolAddress').attr('name','educationalBackground['+i+'].address');
			$(this).find('.honors').attr('name','educationalBackground['+i+'].honor');
			$(this).find('.educId').attr('name','educationalBackground['+i+'].educId');
			//$(this).find('.sssFk').attr('name','sss['+i+'].sss');
			
			$('#save-student').bootstrapValidator('addField', $(this).find('.schoolLevel').attr('name'), {
				
				validators: {
					notEmpty: {
						message: 'Field is required.'
					}
				}
			});
			$('#save-student').bootstrapValidator('addField', $(this).find('.schoolName').attr('name'), {
				
				validators: {
					notEmpty: {
						message: 'Field is required.'
					}
				}
			});
			$('#save-student').bootstrapValidator('addField', $(this).find('.years').attr('name'), {
				
				validators: {
					notEmpty: {
						message: 'Field is required.'
					}
				}
			});
			$('#save-student').bootstrapValidator('addField', $(this).find('.inclusiveDates').attr('name'), {
				
				validators: {
					notEmpty: {
						message: 'Field is required.'
					}
				}
			});
			$('#save-student').bootstrapValidator('addField', $(this).find('.schoolAddress').attr('name'), {
				
				validators: {
					notEmpty: {
						message: 'Field is required.'
					}
				}
			});
			$('#save-student').bootstrapValidator('addField', $(this).find('.honors').attr('name'), {
				
				validators: {
					notEmpty: {
						message: 'Field is required.'
					}
				}
			});
			
		});
	}
	
	//this is for the delete button on each form rows
	$('#educbg-table-body').on('click', '.delete-educbg-template', function() {
		var row = $(this).parents('div.educbg-table');
		row.remove();
		
		initEducbgTable();
	});
	
	
	
});