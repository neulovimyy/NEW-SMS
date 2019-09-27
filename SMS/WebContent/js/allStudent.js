$('#studentLevel').on('change', function(){
   console.log($('#studentLevel').val());
    $('#yearLevel').html('');
    if($('#studentLevel').val()==04){
    	$("#collegeCourse").prop("disabled", false);
        $('#yearLevel').append('<option value="firstYear">1ST YEAR</option>');
        $('#yearLevel').append('<option value="secondYear">2ND YEAR</option>');
        $('#yearLevel').append('<option value="thirdYear">3RD YEAR</option>');
        $('#yearLevel').append('<option value="fourthYear">4TH YEAR</option>');
        $('#yearLevel').append('<option value="fifthYear">5TH YEAR</option>');
    }else if ($('#studentLevel').val()==03) {
    	$("#collegeCourse").prop("disabled", true);
        $('#yearLevel').append('<option value="grade11">GRADE 11</option>');
        $('#yearLevel').append('<option value="grade12">GRADE 12</option>');
    }else if ($('#studentLevel').val()==02) {
    	$("#collegeCourse").prop("disabled", true);
        $('#yearLevel').append('<option value="gradeSev">GRADE 7</option>');
        $('#yearLevel').append('<option value="gradeEgh">GRADE 8</option>');
        $('#yearLevel').append('<option value="gradeNine">GRADE 9</option>');
        $('#yearLevel').append('<option value="gradeTen">GRADE 10</option>');
    }else{
    	$("#collegeCourse").prop("disabled", true);
    	$('#yearLevel').append('<option value="gradeOne">GRADE 1</option>');
        $('#yearLevel').append('<option value="gradeTwo">GRADE 2</option>');
        $('#yearLevel').append('<option value="gradeTHR">GRADE 3</option>');
        $('#yearLevel').append('<option value="gradeFour">GRADE 4</option>');
        $('#yearLevel').append('<option value="gradeFive">GRADE 5</option>');
        $('#yearLevel').append('<option value="gradeSix">GRADE 6</option>');
    }
});

$('#studentLevel').on('change', function(){
	   console.log($('#studentLevel').val());
	    $('#academicTerm').html('');
	    if($('#studentLevel').val()==04){
	    	$("#collegeCourse").prop("disabled", false);
	    	$("#seniorHighStrand").prop("disabled", true);
	        $('#academicTerm').append('<option value="allSemCollege">FULL LIST</option>');
	        $('#academicTerm').append('<option value="firsSemCollege">1ST SEMESTER</option>');
	        $('#academicTerm').append('<option value="secondSemCollege">2ND SEMESTER</option>');
	    }else if ($('#studentLevel').val()==03) {
	    	$("#collegeCourse").prop("disabled", true);
	    	$("#seniorHighStrand").prop("disabled", false);
	    	$('#academicTerm').append('<option value="allSemShs">FULL LIST</option>');
	        $('#academicTerm').append('<option value="firsSemShs">1ST SEMESTER</option>');
	        $('#academicTerm').append('<option value="secondSemShs">2ND SEMESTER</option>');
	    }else if ($('#studentLevel').val()==02) {
	    	$("#collegeCourse").prop("disabled", true);
	    	$("#seniorHighStrand").prop("disabled", true);
	    	$('#academicTerm').append('<option value="allSQuarterJh">FULL LIST</option>');
	        $('#academicTerm').append('<option value="firstQuarterJh">1ST QUARTER</option>');
	        $('#academicTerm').append('<option value="secondQuarterJh">2ND QUARTER</option>');
	        $('#academicTerm').append('<option value="thirdQuarterJh">3RD QUARTER</option>');
	        $('#academicTerm').append('<option value="FourthQuarterJh">4TH QUARTER</option>');
	    }else{
	    	$("#collegeCourse").prop("disabled", true);
	    	$("#seniorHighStrand").prop("disabled", true);
	    	$('#academicTerm').append('<option value="allSQuarterElem">FULL LIST</option>');
	        $('#academicTerm').append('<option value="firstQuarterElem">1ST QUARTER</option>');
	        $('#academicTerm').append('<option value="secondQuarterELem">2ND QUARTER</option>');
	        $('#academicTerm').append('<option value="thirdQuarterElem">3RD QUARTER</option>');
	        $('#academicTerm').append('<option value="FourthQuarterElem">4TH QUARTER</option>');
	    }
	});
