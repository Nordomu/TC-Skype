function BaseElement(locator){
  this.locator = locator;
}

BaseElement.prototype.getElement = function(){
    try {
      var mas=this.locator.split('=');
      var prop=aqString.Trim(mas[0]);
      var value=aqString.Trim(mas[1]);
      var  element = Sys.Process("Skype").FindAll(prop, values, 100); // define an element by the given values
      if(element==null)
      {
        Log.Error("element not find")
      }
      return element;
     }
    catch(e){
      Log.Error("Element not found");
    }
}

BaseElement.prototype.isVisible = function(){
    try {
      this.element = this.getElement();
      return this.element.Visible;
    }
    catch (ex){
      info("element is not visible");
      return false;
    }
}