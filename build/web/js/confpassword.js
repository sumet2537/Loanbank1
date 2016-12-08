/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var password = document.getElementById("password")
  , cpassword = document.getElementById("cpassword");

function validatePassword(){
  if(password.value != cpassword.value) {
    cpassword.setCustomValidity("รหัสผ่านไม่ตรงกัน");
  } else {
    cpassword.setCustomValidity('');
  }
}
password.onchange = validatePassword;
cpassword.onkeyup = validatePassword;
