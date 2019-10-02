var baseUrl = '/SMS';
var emailReg = /^([0-9a-zA-Z]+([_.-]?[0-9a-zA-Z]+)*@[0-9a-zA-Z]+[0-9,a-z,A-Z,.,-]*(.){1}[a-zA-Z]{2,4})+$/;


$(document).ready(function() {
	
	$('#btn-back').click(function() {
		parent.history.back();
		return false;
	 });
	
	//this is the modal for the delete confirmation
	$('#confirm').on('show.bs.modal', function(e) {
		
	    $(this).find('.btn-ok').attr('href', $(e.relatedTarget).data('href'));
	});
	/*tdCheck();

	function tdCheck(){
		$("td").each(function() {
		  var text = $(this).html();
		  if(!$(this).html().replace(/^\s+|\s+$/g, "").length != 0){
			  $(this).text("-");
		  }
		});
	}
	setInterval(function(){
		tdCheck();
	},2000);*/
	
	$('button').on('click', '.btn', function() {
		$(this).removeClass('active');
	});
	
	$("td.total").each(function() {
	  var text = $(this).html();
	  if(!$(this).html().replace(/^\s+|\s+$/g, "").length != 0){
		  $(this).text("-");
	  }
	});
	
	/*setInterval(function() {
	sendSMS();
	},2000);
	
	setInterval(function() {
		sendDoctorSMS();
	},2000);*/
	
	/*$('#notification-list').slimscroll({
	  height: '100px',
	  width: '300px'
	});*/
	
	function initMenu() {
		$('ul.side-nav li').each(function() {
			$(this).removeClass('active');
		});
		
		//set current menu
		if($('#activeMenu').val() == MENU.CONFIGURATION) {
			$('#config').addClass('active');
		} else if($('#activeMenu').val() == MENU.PATIENT_RECORDS) {
			$('#patient').addClass('active');
		} else if($('#activeMenu').val() == MENU.OPERATIONS) {
			$('#operations').addClass('active');
		}
	}
	
	
	function sendSMS() {
		$.ajax({
		    url:base_url + "/clinical/sms/patient/notif",
		    success:function(data){
		    	//console.log(data);
		    }
		 });
	}
	
	function sendDoctorSMS() {
		$.ajax({
		    url:base_url + "/clinical/sms/doctor/notif",
		    success:function(data){
		    	//console.log(data);
		    }
		 });
	}
	
	
	$('.logout').on('click', function() {
		var user = $('#principalUser').val();
		eventsDWRService.transactionTrail("Log Out", user);
	});
	
	$('.notif-user-id').on('click', function() {
		var id = $(this).attr('temp-notif-id');
		if(id){
			eventsDWRService.updateNotificationIsViewed(id);
		}
	});
	
	$('.doc-notif-user-id').on('click', function() {
		var id = $(this).attr('temp-notif-id');
		if(id){
			eventsDWRService.updateEMRNotificationIsViewed(id);
		}
	});
	
	
	$('.btn-list').on('click', function() {
		if($(this).hasClass('active')) {
			$(this).removeClass('active');
			$(this).find('.list-active').removeClass('active');
			$(this).find('.list-active .fa.arrow').css({"content" : "\f107"});
		}else{
			$(this).addClass('active');
			$(this).find('.list-active').addClass('active');
			$(this).find('.list-active .fa.arrow').css({"content" : "\f104"});
		}
	});
	
	$('a, button').click(function() {
        $(this).toggleClass('active');
    });
	
	$('.confirm-no').on('click', function() {
		$(this).removeClass('active');
	});
	
	$(document).on('click', '#btn-save-modal', function() {
		removeCommaFromMaskedCurrency();
		$(window).unbind('beforeunload');
		document.forms["submit_form"].submit();
	});
	
	$('.fadein img:gt(0)').hide();
	
    setInterval(function(){$('.fadein :first-child').fadeOut().next('img').fadeIn().end().appendTo('.fadein');}, 3000);
	
	$('#submit_form').find('input[type=text]').keypress(function(e){
	    if ( e.which == 13 ) // Enter key = keycode 13
	    {
	        $(this).next().focus();  //Use whatever selector necessary to focus the 'next' input
	        return false;
	    }
	});	
	
	$(document).on('click', '.btn-notif', function() {
		var username = $('#principalUser').val();
		eventsDWRService.updateNotificationStatus(username, function() {});
	});
	
	//draggable modal
	//$('.modal-dialog').draggable({ handle:'.modal-header'});
	
	//datepicker
	$(document).on('click', '.day', function() {
		$(document).find('div.datepicker.datepicker-dropdown').hide();
	});
	
	$('#btn-cancel-modal').on('click', function() {
		$('.btn-submit').removeClass('active disabled');
		$('.btn-submit').removeAttr('disabled');
	});
	
	$(document).on('click', '.c-moduleId', function() {
		var moduleId = $(this).attr('moduleid');
		$.ajax({
			type : "POST",
			url : baseUrl+"/admin/user/module",
			data : {
				moduleId:moduleId
			},
			success : function(response) {
				
			},
			error : function(e) {
			//show error message
			},
			complete: function() {
			   	//close modal
			}
		});
	});
	
});

function checkSaveBtn() {
	var errorLen = $(document).find('.has-error:visible').length;

	if (errorLen == 0) {
		$('.btn-submit').attr('disabled', false);
		$('.btn-submit').removeAttr('disabled');
		$('.btn-submit').removeClass('disabled');
	} else {
		$('.btn-submit').attr('disabled', true);
	}
}

function convertToNumber(value) {
	return Number(removeComma(value));
}

function convert2Decimal(value) {
	return Number(value).toFixed(2);
}

function escapeKeyClear() {
	$(window).bind('keydown', function(e) {
		if(e.keyCode === 27) { 
			clearModalSearch();
		}
	});
}

function checkValue(value, element) {
	if(value) {
		$(element).css("border-color","");
		return false;
	} else {
		$(element).css({"border-color":"red"});
		return true;
	}
}

function validateEmail(value) {
	if(value) {
		return !emailReg.test(value);
	}
}

function showErrorMessage(value, isSuccess, element, message) {
	if(isSuccess) {
		element.parents('div.form-group').removeClass('has-success');
		element.parents('div.form-group').addClass('has-feedback has-error');
		element.siblings('i').addClass('glyphicon glyphicon-remove');
		element.siblings('i').css('display', 'block');
		
		if(value) {
			element.parents('div.form-group').find('.error-message').remove();
			element.parents('div.form-group').append('<small class="help-block error-message" data-bv-validator="isExisting" data-bv-result="INVALID" style="display: block;">'+ message +'</small>'
			);
		}
		
		if(!value) {
			// value is empty
			element.parents('div.form-group').find('.error-message').remove();
			element.parents('div.form-group').append('<small class="help-block error-message" data-bv-validator="isExisting" data-bv-result="INVALID" style="display: block;">'+ message +'</small>'
			);
		}
		
		$('.btn-primary').attr('disabled', 'disabled');
	} else {
		element.parents('div.form-group').removeClass('has-error');
		element.siblings('i').removeClass('glyphicon-remove');
		element.parents('div.form-group').find('small.error-message').css('display', 'none');
		
		element.parents('div.form-group').addClass('has-feedback has-success');
		element.siblings('i').addClass('glyphicon glyphicon-ok');
		element.siblings('i').css('display', 'block');
		//TODO: check if form still has-error class
		$('.btn-primary').attr('disabled', false);
	}
}

function clearMessage(element) {
	element.parents('div.form-group').removeClass('has-error');
	element.parents('div.form-group').removeClass('has-success');
	element.parents('div.form-group').find('i').removeClass('glyphicon-remove');
/*//	element.parents('div.form-group').find('i').removeClass('glyphicon glyphicon-ok');
*/	element.parents('div.form-group').find('i').removeClass('glyphicon-ok');
	element.parents('div.form-group').find('small.help-block').css('display', 'none');
	$('.btn-primary').attr('disabled', false);
}

setInterval(function() {
	
	var roleName = $('#roleName').val();
    var user = $('#principalUser').val();
    var clinicId = $('#clinicId').val();
    
    if( (roleName != undefined) && (roleName == ROLES.DOCTOR || roleName == ROLES.SECRETARY) ) {
    	if(user != undefined && user != '') {
            //getEventsByDateAndTime(user);
            getNotifications(user);
            getNotificationCount(user, clinicId);
        }
    }
}, 2000);
 
    
function getEventsByDateAndTime(user) {
	
	var eventCount = $('#eventCount').val();
	
	if(eventCount > 0) {
	eventsDWRService.getEvents(user, function(data) { 
		if(data.length > 0) {
			var reminder= "";

			var name = "";
			var details = "";
			for(var i in data) {
				name = data[i].title;
				details = data[i].details;
				
//				get the event start date
				var startDate = new Date(data[i].start);
				var dStart = startDate.getDate();
				var mStart =  startDate.getMonth();
				mStart += 1;  // JavaScript months are 0-11
				var yStart = startDate.getFullYear();
				var hStart = startDate.getHours();
				var minStart = startDate.getMinutes();
				
//				get the event end date
				var endDate = new Date(data[i].end);
				var dEnd = endDate.getDate();
				var mEnd =  endDate.getMonth();
				mEnd += 1;  // JavaScript months are 0-11
				var yEnd = endDate.getFullYear();
				var hEnd = endDate.getHours();
				var minEnd = endDate.getMinutes();
				
				if(hStart>12) {
					hStart = hStart-12;
					if(hStart<10) 
						hStart = "0"+hStart;
					if(minStart<10)
						minStart = "0"+minStart;
					startTime = hStart + ":" + minStart + " PM";
				}else {
					if(hStart<10) 
						hStart = "0"+hStart;
					if(minStart<10)
						minStart = "0"+minStart;
					startTime = hStart + ":" + minStart + " AM";
				}
				
				if(hEnd>12) {
					hEnd = hEnd-12;
					if(hEnd<10) 
						hEnd = "0"+hEnd;
					if(minEnd<10)
						minEnd = "0"+minEnd;
					endTime = hEnd + ":" + minEnd + " PM";
				}else {
					if(hEnd<10) 
						hEnd = "0"+hEnd;
					if(minEnd<10)
						minEnd = "0"+minEnd;
					endTime = hEnd + ":" + minEnd + " AM";
				}
				
				time = "<strong>Time: </strong>"+startTime + " - " + endTime;

				reminder = 
					mStart + "/" + dStart + "/" + yStart + 
					" - " + 
					mEnd + "/" + dEnd + "/" + yEnd;
				
				var count_event = 0;
				$('.event_id').each(function(){
					if($(this).text() == data[i].id)
						count_event++;
				});
				
				if(count_event < 1) {
					$('#modal-error-message').append('<p style="margin: 0; color: #e44;"><strong>'+name+'</strong></p>'
							+ '<p style="margin: 0; color: #e44;"><strong>'+details+'</strong></p>'
							+ '<p style="margin: 0;"><strong> Date: </strong>'+reminder+'</p>'
							+ '<p style="margin-bottom: 10px;">'+time+'</p>'
							+ '<p style="display: none;" class="event_id">'+data[i].id+'</p>');
				}
			}
			
			var i = 0;
			$(".event_id").each(function(){
				i++;
			});
			
			$('#modal-error-message').css({
				'max-height' : '350px',
				'overflow-y' : 'scroll'
			});
			
			$('.confirm-meeting').show();
			$('.modal-header').text('Reminder (' +i+ ')');
			$('#errorModal').modal('show');
		}
	});

	
	
	$(document).on('click','.confirm-meeting',function(){
		
		var length = 0;
		$('.event_id').each(function(){
			if($(this).text() != '') {
				length++;
			}
		});
		
		var event_ids = "";
		$('.event_id').each(function(i){
			event_ids += $(this).text();
			if(i < length-1) {
				event_ids += ",";
			}
		});
		
		if(event_ids != "")
			eventsDWRService.updateEvent(event_ids);
		$('#modal-error-message').empty();			

		for(var i in data) {
			reminder = $.datepicker.formatDate('yy-mm-dd', data[i].start) + " - " + $.datepicker.formatDate('yy-mm-dd', data[i].end);
		}
			
		if($('.event_name:last').text() != data[i].start + " - " + data[i].end) {
			$('#modal-error-message').html('<p style="margin: 0;">'+data[i].title+'</p>');
			$('#modal-error-message').html('<p style="margin: 0;">'+data[i].details+'</p>');
			$('#modal-error-message').html('<p style="margin: 0;" class="event_name">'+reminder+'</p>');
		}
		
		$('#errorModal').modal('show');
	});
	
	$(document).on('click', '.btn-notif', function() {
		var username = $('#principalUser').val();
		alert("sssssssssss");
		eventsDWRService.updateNotificationStatus(username, function() {});
	});
	
	
	}

}

function getNotifications(username) {
	var notifElem = $('#notification-list');
	var messages = "";
	
	
	var notifSize = $('#notif-size').val();
	if(notifSize > 0) {
		/*eventsDWRService.getNotifications(username, function(data) {
	
			if(data.length > 0) {
				var count = 0;
				for(var i in data) {
					if(data[i].isActive == true) {
						count++;
					}
				}
				
				if(count > 0) {
					for(var i in data) {				
						//clear all notifications
						notifElem.html('');
					}
				} else {
					$('#notification-list li').each(function() {
						$(this).removeClass('notif-active');
						$(this).addClass('notif-inactive');
					});
				}
			}
		});*/
	}
}

function getNotificationCount(username, clinicId) {
	var bellElem = $('#badge-link i.fa-bell');
	var notifSize = $('#notif-size').val();
	
	if(notifSize > 0) {
		eventsDWRService.getNotificationCount(username, clinicId, function(data) {
			if(Number(data) > 0) {
				
				/*alert(data);*/
				/*$('#badge-link span.badge').remove();*/
				/*bellElem.after(
					'<span class="badge badge-notify">'+ data +'</span>'
				);*/
				
				$('#badge-link span.badge').removeClass('hide');
				
				$('.badge-notify').text(data);
				
			} else {
				$('#badge-link span.badge').addClass('hide');
			}
		});
	}
}


function showModal($element, title, message) {
	$element.find('.title').text(title);
	$element.find('.message').text(message);
	$element.modal('show');	
}

function modalAlertMessage(description, info) {
	var notifTemplate = $('#notif-template');
	notifTemplate.find('.alert .notif-message .desc-message').text(description);
	notifTemplate.find('.alert .notif-message .info-message').text(info);
	
	$('#notif-alert .alert-group').append(notifTemplate.html());
	$('#notif-alert .alert-group div.alert').fadeIn().delay(1800).fadeOut(function(){
		$(this).remove();
    });
}

function showNotification(colorName, text, placementFrom, placementAlign, animateEnter, animateExit) {
    if (colorName === null || colorName === '') { colorName = 'bg-black'; }
    if (text === null || text === '') { text = 'Turning standard Bootstrap alerts'; }
    if (animateEnter === null || animateEnter === '') { animateEnter = 'animated fadeInDown'; }
    if (animateExit === null || animateExit === '') { animateExit = 'animated fadeOutUp'; }
    var allowDismiss = true;

    $.notify({
        message: text
    },
        {
            type: colorName,
            allow_dismiss: allowDismiss,
            newest_on_top: true,
            timer: 1000,
            placement: {
                from: placementFrom,
                align: placementAlign
            },
            animate: {
                enter: animateEnter,
                exit: animateExit
            },
            template: '<div data-notify="container" class="bootstrap-notify-container alert alert-dismissible {0} ' + (allowDismiss ? "p-r-35" : "") + '" role="alert">' +
            '<button type="button" aria-hidden="true" class="close" data-notify="dismiss">�</button>' +
            '<span data-notify="icon"></span> ' +
            '<span data-notify="title">{1}</span> ' +
            '<span data-notify="message">{2}</span>' +
            '<div class="progress" data-notify="progressbar">' +
            '<div class="progress-bar progress-bar-{0}" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="width: 0%;"></div>' +
            '</div>' +
            '<a href="{3}" target="{4}" data-notify="url"></a>' +
            '</div>'
        });
}


function hideButton(){
	ModeleOnSession();
	var item = $('#writeItem').val();
	var moduleId = $('#moduleId').val();
	var array = item.split(',');
    
	if(item != "") {
	    if(checkValue(moduleId,array) == 'Not exist') {
	    	/*$('.btn-primary[type="submit"]').addClass("hide");
	    	$("a:contains(Create)").addClass("hide");
	    	$("a:contains(Compose)").addClass("hide");*/
	    	
	    	$('.btn-primary[type="submit"]').remove();
	    	$("a:contains(Create)").remove();
	    	$("a:contains(Compose)").remove();
	    }
	}
}

function checkValue(value,arr){
  var status = 'Not exist';
  
  for(var i=0; i<arr.length; i++){
    var name = arr[i];
    if(name == value){
      status = 'Exist';
      break;
    }
  }
  

  return status;
}


function ModeleOnSession() {
	var moduleId = $('#moduleId').val();
	$.ajax({
		type : "POST",
		url : baseUrl+"/admin/user/module",
		data : {
			moduleId:moduleId
		},
		success : function(response) {
			
		},
		error : function(e) {
		//show error message
		},
		complete: function() {
		   	//close modal
		}
	});
}



