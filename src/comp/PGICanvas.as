package comp
{
   import com.soma.ui.ElementUI;
   import com.soma.ui.layouts.CanvasUI;
   
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class PGICanvas extends CanvasUI
   {
      public function PGICanvas(reference:DisplayObjectContainer, width:Number = 15, height:Number = 15)
      {
         super(reference, width, height);
      }
      
      public function prepareElementAndPosition(argDisplayObject:DisplayObject, argTop:Number = NaN, argBottom:Number = NaN, 
                                                   argLeft:Number = NaN, argRight:Number = NaN):DisplayObject {
         var element:ElementUI = this.add(argDisplayObject);
         element.top = argTop;
         element.bottom = argBottom;
         element.left = argLeft;
         element.right = argRight;
         element.refresh();
         return this.element.object;
      }
   }
}