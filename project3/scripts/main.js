"use strict";

function process(image_name){
    if (image_name == 'bayern') {
    document.getElementById("image1").src="images/bayern.jpg";        
    }
    else if (image_name == 'chelsea') {
    document.getElementById("image1").src="images/chelsea.jpg";        
    }
    else if (image_name == 'barcelona') {
    document.getElementById("image1").src="images/barcelona.jpg";                
    }
}


var addinf = function() {
    
    var nameAddress = document.getElementById("name_address").values;
    var phoneAddress = document.getElementById("phone_address").values;
    var emailAddress = document.getElementById("email_address").values;
    var isValid = true;
    
    
    
   if (nameAddress == "") {
        document.getElementById("name_address").nextElementSibling.firstChild.nodeValue = "You must enter Name.";
        isValid = false;
    } 
    
    else {
        document.getElementById("name_address").nextElementSibling.firstChild.nodeValue = "";
    }
    
   if (isValid) {
        document.getElementById("formAdd").submit(); 
    } 
    

};

window.onload = function() {
    document.getElementById("submitOrder").onclick = addinf;
    document.getElementById("name_address").focus();
};