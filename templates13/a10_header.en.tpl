<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
{$headerExtra}
{literal}

<script type="text/javascript" src="jQueryUI/js/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="jQueryUI/js/jquery-ui-1.8.17.custom.min.js"></script>
<script type="text/javascript" src="jQueryUI/js/jquery.multiselect.js"></script>
<link rel="stylesheet" type="text/css" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/ui-lightness/jquery-ui.css" />

<script type="text/javascript">


$(document).ready(function(){
	$('.ajaxlink').click(function(){
		var clicked_link = $(this).attr('link');

		$('.loader').load(clicked_link, function() {
		});
	});

});

$(document).ready(function(){
	$('select[name="year"]').change(function(){
		var category = $('select[name="category"]').attr('value');
		var month  = $('select[name="month"]').attr('value');
		var year   = $(this).attr('value');
		$('.loader').load( '/Calendar/ajax.php?display=month&category='+category+'&year='+year+'&month='+month, function() {
		});
	});
});


//$(document).ready(function(){
//	$('select[name="category"]').change(function(){
//		var category = $(this).attr('value');
//		var month  = $('select[name="month"]').attr('value');
//		var width  = $('hidden[name="width"]').attr('value');
//		var year   = $('select[name="year"]').attr('value');
//		$('.loader').load( '/Calendar/ajax.php?display=month&category='+category+'&year='+year+'&month='+month + '&width=' + width, function() {
//		});
//	});
//});

$(document).ready(function(){
	$('select[name="month"]').change(function(){
		var category = $('select[name="category"]').attr('value');
		var month  = $(this).attr('value');
		var year   = $('select[name="year"]').attr('value');
		$('.loader').load( '/Calendar/ajax.php?display=month&category='+category+'&year='+year+'&month='+month, function() {
		});
	});
});

$(document).ready(function(){
	$("select").multiselect();
});
$(document).ready(function(){
	$("select").multiselect();
});
</script>
{/literal}
</head>
<body>
