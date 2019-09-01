
$(document).ready(function(){
	$
	$('#birthDate').datepicker();
	$('#save-student').bootstrapValidator({
		framework: 'bootstrap',
    	message: 'This value is not valid.',
    	icon: {
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
        	
        	birhtDate: {
                validators: {
                    notEmpty: {
                        message: 'Please fill out this field'
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
        	}
         }
	});
	
	
});