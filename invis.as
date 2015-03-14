package  {
	import flash.display.MovieClip; 
	import flash.events.*; 
	import flash.media.Sound;
import flash.media.SoundChannel;
	public class invis extends MovieClip {
		var player:MovieClip;
		var MainTimeLine=MovieClip(root);

		public function invis() {
			this.addEventListener(Event.ENTER_FRAME, update);
			this.visible=false;
		}
		function update(event:Event):void {
			player= MovieClip(root).player;
			if (this.hitTestObject(player)) {
				this.visible=true;
	
			}
		}
		public function removeSelf():void {
    trace("remove self");
    this.parent.removeChild(this); //tell this object's "parent object" to remove this object
    //in our case, the parent is the background because in the main code we said: back.addChild(bullet);
}

	}
	
}