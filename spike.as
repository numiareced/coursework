package  {
	import flash.display.MovieClip; 
	import flash.events.*; 
	import flash.media.Sound;
import flash.media.SoundChannel;
	public class spike extends MovieClip {
		var player:MovieClip;
		var MainTimeLine=MovieClip(root);
		

		public function spike() {
			this.addEventListener(Event.ENTER_FRAME, update);
			// constructor code
		}
		function update(event:Event):void {
			player= MovieClip(root).player.pl.hitbox;
			if (this.hitTestObject(player)) {
				MainTimeLine.health(100);
			}
		}

	}
	
}
