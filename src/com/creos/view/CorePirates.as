import com.creos.view.Ball;
import com.blitzagency.xray.logger.*;
import com.blitzagency.xray.util.XrayLoader;
import com.dynamicflash.utils.Delegate;
import com.mosesSupposes.fuse.*;
/**
 * @author Birikini
 */
class com.creos.view.CorePirates extends MovieClip {
	
	public var log : XrayLogger;
	private var baseClip : MovieClip;
	
	public function CorePirates(target : MovieClip) {
		trace("Core Pirates");
		this.baseClip = target;
		//Ball Klasse registrieren, und den ball aus der Library anhängen
		Object.registerClass("ball", Ball);
		var ballMc :Ball = Ball(baseClip.attachMovie("ball", "ballMc", target.getNextHighestDepth()));
		//Bewegt sich nur, wenn ball als Objekt registriert wurde -> zugriff auf Klasse Ball
		var attachBall:MovieClip = baseClip.attachMovie("ball", "_redClip2", 90, {_x:300, _y:60});	
		init();
	}
	private function init():Void
	{
		baseClip.lineStyle(1, 0, 100);
		baseClip.lineTo(100, 100);
		
		log  = new XrayLogger();
		XrayLoader.addEventListener(XrayLoader.LOADCOMPLETE, this, "startApp");	
		XrayLoader.addEventListener(XrayLoader.LOADERROR, this, "startApp");
		XrayLoader.loadConnector("xrayConnector_1.6.3.swf", baseClip, true);		
	}
	public function startApp() : Void
	{		
		//Ab hier können traces von Xray ausgegeben werden.
		log.debug("this is a log message using log.debug----------" +baseClip.box_1._x);
		trace("XRAY starter Core Pirates");
//		//baseClip.gotoAndStop(2);
		
		ZigoEngine.simpleSetup(Shortcuts, FuseItem, PennerEasing);
		baseClip.createTextField("tf", 1, 0, 0, 100, 100);
		var tf : TextField = baseClip["tf"];
		tf.text = "Hello Pirates";
		
		var f:Fuse = new Fuse();
		f.push({target:tf, start_y:1000, y:50, duration:3});
		f.start();
	}
}
