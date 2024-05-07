/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

let validator=function(a,b){
    let x=document.getElementById(a);
    let y=document.getElementById(b);
    if(x.value==" "){
        y.innerHTML="Field should not be empty";
              
        
    }else{
        y.innerHTML="";
    }
};





