//USEUNIT MyBaseElement
//USEUNIT _SyntacticSugar

function CheckBox()
{
  CheckBox.superclass.constructor.apply(this, arguments)
}

extend(CheckBox, BaseElement);

CheckBox.prototype.isChecked = function(){
  return CheckBox.superclass.getElement().State;
}

CheckBox.prototype.ChangeValue = function(){
  CheckBox.superclass.getElement().Click();
}
