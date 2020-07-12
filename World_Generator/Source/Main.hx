import openfl.display.Bitmap;
import openfl.display.BitmapData;
import openfl.display.Sprite;
import openfl.Lib;
class Main extends Sprite
{
	public function new()
	{
		super();
		BitmapData.loadFromFile ("assets/test.png").onComplete (function (bitmapData) {
		    var bitmap = new Bitmap (bitmapData);
            addChild (bitmap);
            addChild (new Bitmap(analyse(bitmap.bitmapData)));
        });
	}

	static function main(){
	    Lib.current.addChild(new Main());
	}

	public function analyse( image:BitmapData ):BitmapData{
	    var ret=image.clone();
	    ret.lock();
        for( i in 0... image.width ){
            for( j in 0... image.height ){
                var height=image.getPixel(i,j)&0xFF;
                var heat:Float;
                heat=4*j*(image.height-j)/(image.height*image.height);
                ret.setPixel(i,j,(0xFF-height)/*blue*/+ ((Std.int(Math.max((Std.int(heat*0xFF)-Std.int(height/4)),0))&0xFF)<<16));
            }
        }
        ret.unlock();
        return ret;
	}
}
