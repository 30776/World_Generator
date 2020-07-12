import openfl.display.Bitmap;
import openfl.display.BitmapData;
import openfl.display.Sprite;
import openfl.Lib;
class Main extends Sprite
{
	public function new()
	{
		super();
		BitmapData.loadFromFile ("assets/openfl.png").onComplete (function (bitmapData) {
		    var bitmap = new Bitmap (bitmapData);
            addChild (bitmap);
        });
	}

	static function main(){
	    Lib.current.addChild(new Main());
	}
}
