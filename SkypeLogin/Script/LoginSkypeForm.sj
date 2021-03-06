//USEUNIT MyBaseForm
//USEUNIT MyTextBox
//USEUNIT _SyntacticSugar
//USEUNIT MyCheckBox

function SkypeLogin(locator)
{
  SkypeLogin.superclass.constructor.apply(this, arguments)
}
extend(SkypeLogin, BaseForm);

SkypeLogin.prototype.setUserName = function(login){
  var userName=new TextBox("Name=Textbox(\"username\")");
  userName.setText(login);
}

SkypeLogin.prototype.setPassword = function(password){
  var passwordBox=new TextBox("Name=PasswordBox(\"password\")");
  passwordBox.setText(login);
}

SkypeLogin.prototype.switchOffCheckBox = function(){
  var checkBox=new CheckBox("Name=CheckBox(\"Автом. авторизация при запуске Skype\")");
  var flag= checkBox.getState();
  if(flag==0)
  {
    checkBox.ChangeValue();
  }
  checkBox.ChangeValue();
}

