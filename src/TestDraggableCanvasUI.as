package
{
   import com.soma.ui.ElementUI;
   
   import comp.PGICanvas;
   import comp.PGIDraggableCanvas;
   import comp.PGILabel;
   import comp.PGITextInput;
   import comp.PGIVGroup;
   
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   
   public class TestDraggableCanvasUI extends Sprite
   {
      private var _pgiDraggableCanvas:PGIDraggableCanvas;
      private var _firstNameLabel:PGILabel;
      private var _firstNameTextInput:PGITextInput;
      private var _lastNameLabel:PGILabel;
      private var _lastNameTextInput:PGITextInput;
      private var _emailLabel:PGILabel;
      private var _emailTextInput:PGITextInput;
      
      public function TestDraggableCanvasUI()
      {
         _pgiDraggableCanvas = new PGIDraggableCanvas(300, 200);
         _pgiDraggableCanvas.title = "This is a sample draggable canvas";
         _firstNameLabel = new PGILabel("First Name");
         _pgiDraggableCanvas.addElement(_firstNameLabel, 15, NaN, 18, NaN);
         _firstNameTextInput = new PGITextInput(200);
         _pgiDraggableCanvas.addElement(_firstNameTextInput.content, 22, NaN, 73, NaN);
         _lastNameLabel = new PGILabel("Last Name");
         _pgiDraggableCanvas.addElement(_lastNameLabel, 45, NaN, 18, NaN);
         _lastNameTextInput = new PGITextInput(200);
         _pgiDraggableCanvas.addElement(_lastNameTextInput.content, 52, NaN, 73, NaN);
         _emailLabel = new PGILabel("Email");
         _pgiDraggableCanvas.addElement(_emailLabel, 75, NaN, 18, NaN);
         _emailTextInput = new PGITextInput(200);
         _pgiDraggableCanvas.addElement(_emailTextInput.content, 82, NaN, 73, NaN);
         this.addChild(_pgiDraggableCanvas);
      }
   }
}