/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

//function BorderColor(inputField,color){
  //  inputField.style.borderColor=color;
//}
function validate(inputField){
    if(inputField.value !==''){
        inputField.classList.add('valid');
        document.getElementById('errorMessage').style.display='none';
    }else{
        inputField.classList.remove('valid');
        document.getElementById('errorMessage').style.display='block';
    }
}