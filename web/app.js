//  /*
//  
//  document.querySelector('#redirection').innerHTML ="<button type='submit' class='btn btn-success btn-block' id='btnAnnuler'>Activer</button>";
//  document.getElementById('btnAnnuler').addEventListener('click', function(){ Annuler(); });
//
////function Annuler(){
////
////
////  document.querySelector('#redirection').innerHTML =" <br><br><button type='submit' class='btn btn-danger btn-block' id='btnRedireger'>Désactiver</button> <br><br>";
////
////operation.setAttribute('disabled','disabled');
////function opposition(){
//    
// btnRedireger.setAttribute('disabled','disabled');
//    
//}
//
//
///* function de l'opposition*/
//
//var collapseElementList = [].slice.call(document.querySelectorAll('.collapse'))
//var collapseList = collapseElementList.map(function (collapseEl) {
//  return new bootstrap.Collapse(collapseEl)
//})
//$(document).ready(function(){
//
//$('#smartwizard').smartWizard({
//selected: 0,
//theme: 'dots',
//autoAdjustHeight:true,
//transitionEffect:'fade',
//showStepURLhash: false,
//
//});
//
//});
//}
//*/


const sign_in_btn = document.querySelector("#sign-in-btn");
const sign_up_btn = document.querySelector("#sign-up-btn");
const container = document.querySelector(".container");

sign_up_btn.addEventListener("click", () => {
  container.classList.add("sign-up-mode");
});

sign_in_btn.addEventListener("click", () => {
  container.classList.remove("sign-up-mode");
});
