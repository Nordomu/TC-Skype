//USEUNIT MyBaseElement

function BaseForm(locator){
  this.locator = locator;
  this.elem = new BaseElement(locator);
  if(this.elem.isVisible())
  {
   Log.Message("page open");
  }
  else 
  {
   Log.Error("page is not opened");
  }
 } 