
/**
 * @author Birikini
 */
class com.creos.view.Ball extends MovieClip {
	public function Ball() {
		trace("hier ist die Ball Klasse");
	}
	
	public function onEnterFrame() {
		this._x += 2;
		this._y += 2;
		//trace("my position: x: " + this._x + " - y: " + this._y);
	}
}