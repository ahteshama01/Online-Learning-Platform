/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


//  getting countries
let getcountries = function(){
    let xhr=new XMLHttpRequest();
    xhr.onreadystatechange=function(){
        if(xhr.readyState== 4){
            if((xhr.status>=200 && xhr.status<300) || xhr.status==304){
                let jobj=JSON.parse(xhr.responseText);
                for(x in jobj.countries){
                    let a=document.createElement("option");
                    a.appendChild(document.createTextNode(jobj.countries[x]));
                    a.setAttribute("value",x);
                    let elm=document.getElementById("con");
                    elm.appendChild(a);
                }
            }else{
                alert("request unsucessfull");
            }
        }
    };
    xhr.open("get","http://localhost:8080/OLP/fc/?action=model&page=SelectCountry",true);
    xhr.send(null);
};



// Getting Categories
let getcategories = function(){
    let xhr=new XMLHttpRequest();
    xhr.onreadystatechange=function(){
        if(xhr.readyState== 4){
            if((xhr.status>=200 && xhr.status<300) || xhr.status==304){
                let jobj=JSON.parse(xhr.responseText);
                for(x in jobj.categories){
                    let a=document.createElement("option");
                    a.appendChild(document.createTextNode(jobj.categories[x]));
                    a.setAttribute("value",x);
                    let elm=document.getElementById("cat");
                    elm.appendChild(a);
                }
            }else{
                alert("request unsucessfull");
            }
        }
    };
    xhr.open("get","http://localhost:8080/OLP/fc/?action=model&page=SelectCategory",true);
    xhr.send(null);
};



//Getting sub-category
let getsubcategories = function(){
    let xhr=new XMLHttpRequest();
    xhr.onreadystatechange=function(){
        if(xhr.readyState== 4){
            if((xhr.status>=200 && xhr.status<300) || xhr.status==304){
                let jobj=JSON.parse(xhr.responseText);
                for(x in jobj.subcategories){
                    let a=document.createElement("option");
                    a.appendChild(document.createTextNode(jobj.subcategories[x]));
                    a.setAttribute("value",x);
                    let elm=document.getElementById("subcat");
                    elm.appendChild(a);
                }
            }else{
                alert("request unsucessfull");
            }
        }
    };
    xhr.open("get","http://localhost:8080/OLP/fc/?action=model&page=SubCategory&SelectCategory",true);
    xhr.send(null);
};



//Getting Topic

// Getting Categories
let gettopics = function(){
    let xhr=new XMLHttpRequest();
    xhr.onreadystatechange=function(){
        if(xhr.readyState== 4){
            if((xhr.status>=200 && xhr.status<300) || xhr.status==304){
                let jobj=JSON.parse(xhr.responseText);
                for(x in jobj.topics){
                    let a=document.createElement("option");
                    a.appendChild(document.createTextNode(jobj.topics[x]));
                    a.setAttribute("value",x);
                    let elm=document.getElementById("topic");
                    elm.appendChild(a);
                }
            }else{
                alert("request unsucessfull");
            }
        }
    };
    xhr.open("get","http://localhost:8080/OLP/fc/?action=model&page=SelectTopic&SubCategory",true);
    xhr.send(null);
};