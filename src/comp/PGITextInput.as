package comp
{
   import com.halcyon.util.events.HalcyonEvent;
   
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.text.TextField;
   import flash.text.TextFieldType;
   
   public class PGITextInput extends EventDispatcher
   {
      public static const TEXT_CHANGE:String = "textChange";
      
      private var _mcTextInputBorder:McTextInputBorder;
      private var _textField:TextField;
      private var _enabled:Boolean = true;
      
      public function PGITextInput(argWidth:Number, argheight:Number = 20)
      {
         _mcTextInputBorder = new McTextInputBorder();
         _mcTextInputBorder.width = argWidth;
         _mcTextInputBorder.height = argheight;
         _textField = new TextField();
         _textField.type = TextFieldType.INPUT;
         _textField.width = _mcTextInputBorder.getBounds(_mcTextInputBorder).width - 10;
         _textField.height = _mcTextInputBorder.height - 2;
         _textField.x = 10;
         _textField.y = -9;
         _textField.addEventListener(Event.CHANGE, inputEventCapture);
         _mcTextInputBorder.addChild(_textField);
      }
      
      public function inputEventCapture(event:Event):void {
         this.dispatchEvent(new HalcyonEvent(TEXT_CHANGE, false, false, _textField.text ));
      }
      
      public function get content():MovieClip {
         return _mcTextInputBorder;
      }
      
      public function set displayAsPassword(value:Boolean):void {
         _textField.displayAsPassword = value;
      }
      
      public function get text():String
      {
         return _textField.text;
      }
      
      public function set text(value:String):void
      {
         _textField.text = value;
      }
      
      public function set enabled(value:Boolean):void
      {
         _enabled = value;
      }
      
      public function get x():Number { 
         return _mcTextInputBorder.x; 
      }
      
      public function set x(value:Number):void {
         _mcTextInputBorder.x = value;
      }
      
      public function get y():Number { 
         return _mcTextInputBorder.y; 
      }
      
      public function set y(value:Number):void {
         _mcTextInputBorder.y = value;
      }
      
      public function get bottom():Number { 
         return _mcTextInputBorder.y + _mcTextInputBorder.height; 
      }
   }
   
}