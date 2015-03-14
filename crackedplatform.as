package  {
	import flash.display.MovieClip; 
	import flash.events.*; 
	import flash.media.Sound;
	import flash.media.SoundChannel;
	import flash.utils.Timer;
    import flash.events.TimerEvent;
	
	public class crackedplatform extends MovieClip {
		var player:MovieClip;
		var MainTimeLine=MovieClip(root);
		var tim:Timer = new Timer(50,1);
		var crackSoundS:Sound=new cracksound();
        

		public function crackedplatform() {
			
			this.addEventListener(Event.ENTER_FRAME, update);
			 tim.addEventListener(TimerEvent.TIMER, remove);
            
			// constructor code
		}
		
		function update(event:Event):void {
			player= MovieClip(root).player;
			if (this.hitTestObject(player)) {
				this.gotoAndStop(2);
				 tim.start();
				//this.visible=false;
	
	             
			}
		}
			function remove(e:TimerEvent):void{
			crackSoundS.play();
			parent.removeChild(this);
			
		}
		public function removeSelf():void {
    trace("remove self");
    
    this.parent.removeChild(this); //tell this object's "parent object" to remove this object
    //in our case, the parent is the background because in the main code we said: back.addChild(bullet);
}

	}
	
}
