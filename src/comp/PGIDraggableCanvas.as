package comp
{
   import com.soma.ui.ElementUI;
   
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class PGIDraggableCanvas extends Sprite
   {
      private var _vGroup:PGIVGroup;
      private var _header:Sprite;
      private var _canvas:PGICanvas;
      private var _titleField:PGILabel;
      
      public function PGIDraggableCanvas(argWidth:Number, argHeight:Number)
      {
         super();
         _vGroup = new PGIVGroup(this);
         _header = new Sprite();
         _header.graphics.lineStyle(0, 0x000000, 1);
         _header.graphics.beginFill(0xc4c4c4, 1);
         _header.graphics.drawRect(0, 0, argWidth, 10);
         _header.addEventListener(MouseEvent.MOUSE_DOWN, onMouseDown);
         _header.addEventListener(MouseEvent.MOUSE_UP, onMouseUp);
         _titleField = new PGILabel();
         _titleField.fontSize = 6;
         _header.addChild(_titleField);
         _canvas = new PGICanvas(_vGroup, argWidth, argHeight - 11);
         _canvas.backgroundColor = 0x00ff00;
         _vGroup.addChild(_header);
         _vGroup.addChild(_canvas);
         super.addChild(_vGroup);
      }
      
      override public function addChild(child:DisplayObject):DisplayObject {
         return null;
      }
      
      override public function addChildAt(child:DisplayObject, index:int):DisplayObject {
         return null;
      }
      
      override public function removeChild(child:DisplayObject):DisplayObject {
         return _canvas.removeChild(child);   
      }
      
      override public function removeChildAt(index:int):DisplayObject {
         return _canvas.removeAt(index);
      }
      
      override public function removeChildren(beginIndex:int=0, endIndex:int=int.MAX_VALUE):void {
         return _canvas.removeChildren(beginIndex, endIndex);
      }
      
      override public function getChildAt(index:int):DisplayObject {
         return _canvas.getChildAt(index);
      }
      
      override public function getChildIndex(child:DisplayObject):int {
         return _canvas.getChildIndex(child);
      }
      
      override public function getChildByName(name:String):DisplayObject {
         return _canvas.getChildByName(name);
      }
      
      override public function get numChildren():int {
         return _canvas.numChildren;
      }
      
      public function addElement(argDisplayObject:DisplayObject, argTop:Number = NaN, argBottom:Number = NaN, 
                                                argLeft:Number = NaN, argRight:Number = NaN):DisplayObject {
         return _canvas.prepareElementAndPosition(argDisplayObject, argTop, argBottom, argLeft, argRight);
      }
      
      public function add(child:DisplayObject):ElementUI {
         return _canvas.add(child);
      }
      
      public function addAt(child:DisplayObject, index:int):ElementUI {
         return _canvas.addAt(child, index);
      }
      
      public function refresh():void {
         _canvas.refresh();
      }
      
      public function set title(value:String):void {
         _titleField.label = value;  
         _titleField.fontSize = _titleField.fontSize;
      }
      
      public function get title():String {
         return _titleField.label;
      }
      
      private function onMouseDown(event:MouseEvent):void {
         this.startDrag();
      }
      
      private function onMouseUp(event:MouseEvent):void {
         this.stopDrag();
      }
   }
}