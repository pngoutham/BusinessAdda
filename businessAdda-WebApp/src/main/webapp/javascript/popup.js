/***************************/
//@Author: Adrian "yEnS" Mato Gondelle
//@website: www.yensdesign.com
//@email: yensamg@gmail.com
//@license: Feel free to use it, but keep this credits please!					
/***************************/


var popupStatus = 0;

function loadPopup(){
	if(popupStatus==0){
		$("#backgroundPopup").css({
			"opacity": "0.7"
		});
		$("#backgroundPopup").fadeIn("slow");
		$("#myPopup").fadeIn("slow");
		popupStatus = 1;
	}
}

function disablePopup(){
	if(popupStatus==1){
		$("#backgroundPopup").fadeOut("slow");
		$("#myPopup").fadeOut("slow");
		popupStatus = 0;
	}
}

//centering popup
function centerPopup(){
	//request data for centering
	var windowWidth = document.documentElement.clientWidth;
	var windowHeight = document.documentElement.clientHeight;
	var popupHeight = $("#myPopup").height();
	var popupWidth = $("#myPopup").width();
	

	$("#myPopup").css({
		"position": "absolute",
		//"top": windowHeight/2-popupHeight/2,
		//"left": windowWidth/2-popupWidth/2
		"left": 370,
		"top": 150
	});
	
	$("#backgroundPopup").css({
		"height": windowHeight
	});
}

function createPopup(){
	//centering with css
	centerPopup();
	//load popup
	loadPopup();	
}

function closePopup(){
	disablePopup();
}

$(document).ready(function(){
	
	//CLOSING POPUP
	//Click the x event!
	$("#popupClose").click(function(){
		disablePopup();
	});
	//Click out event!
	$("#backgroundPopup").click(function(){
		disablePopup();
	});
	//Press Escape event!
	$(document).keypress(function(e){
		if(e.keyCode==27 && popupStatus==1){
			disablePopup();
		}
	});

});