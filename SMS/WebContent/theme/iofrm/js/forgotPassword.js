$(document).ready(function() {
	$('.btn-back').on('click', function() {
		document.location.href=window.location.href.replace("forgot", "login");
	});
	
    $('#reset-password').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
            email: {
                validators: {
                    notEmpty: {
                        message: 'This field is required.'
                    },
                    emailAddress: {
                        message: 'The input is not a valid email address.'
                    }
                }
            }
        }
    })
    .on('success.form.bv', function(e) {
 	   e.preventDefault();
 	   
 	   //ajax to send reset password
 	  $.ajax({
			type : "POST",
			url : "/ApolloMedicus/clinical/reset",
			data : $('form[name=resetForm]').serialize(),
			success : function(response) {
				if(response === "200") {
					$('.form-items','.form-content').addClass('hide-it');
					$('.form-sent','.form-content').addClass('show-it');
				}
			},
			error : function(e) {
				//show error message
			},
		    complete: function() {
		    	//show notif
		    }
		});
    });
});