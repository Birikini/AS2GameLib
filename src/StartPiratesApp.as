import com.creos.view.CorePirates;
/**
 * @author Birikini
 */
class StartPiratesApp extends MovieClip {
	public function StartPiratesApp() {
	}
	public static function main(target:MovieClip) : Void {
		trace("Starte Piraten");
		Stage.align = "TL";
		Stage.scaleMode = "noScale";
		var c : CorePirates = new CorePirates(_root);
		
	}
}
