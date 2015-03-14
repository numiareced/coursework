package  {
	import flash.display.MovieClip; 
	import flash.events.*; 
	import flash.media.Sound;
import flash.media.SoundChannel;
	public class Coin extends MovieClip {
		var player:MovieClip;
		var MainTimeLine=MovieClip(root);
		var coinSound:Sound = new coin4();

		public function Coin() {
			this.addEventListener(Event.ENTER_FRAME, update);
			// constructor code
		}
		function update(event:Event):void {
			player= MovieClip(root).player;
			if (this.hitTestObject(player)) {
				coinSound.play();
				this.removeEventListener(Event.ENTER_FRAME, update);
				parent.removeChild(this);
				MainTimeLine.score+=500;
			}
		}

	}
	
}
