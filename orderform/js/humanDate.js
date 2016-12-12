// This script creates a human readable date from Javascript

var today = new Date();
var dd = today.getDate();
var mm = today.getMonth()+1; //January is 0!
var yyyy = today.getFullYear();
if(dd<10) {
	dd='0'+dd
} 
if(mm<10) {
	mm='0'+mm
} 
today = mm+'/'+dd+'/'+yyyy;
