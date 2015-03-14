package  {
	import flash.display.MovieClip;
	import flash.events.Event;
	
	public class enemybullet extends MovieClip {
		
		private var speed:int = 2;
		private var initialX:int;
		
		public function removeSelf():void {
    trace("remove self");
    removeEventListener(Event.ENTER_FRAME, loop); //stop the loop
    this.parent.removeChild(this); //tell this object's "parent object" to remove this object
    //in our case, the parent is the background because in the main code we said: back.addChild(bullet);
}

		public function enemybullet(playerX:int, playerY:int, playerDirection:String, playerSpeed:int) {
			// constructor code
			initialX = x; //use this to remember the initial spawn point
			if(playerDirection == "left") {
				this.scaleX=1;
    speed = -8 + playerSpeed; //speed is faster if player is running
    x = playerX -80;
} else if(playerDirection == "right") {
	this.scaleX=-1;
    speed = 8 + playerSpeed;
    x = playerX  + 80;
}
			
			y = playerY+25;
			
			addEventListener(Event.ENTER_FRAME, loop);
			initialX = x;
		}
		
		public function loop(e:Event):void
		{      
			//looping code goes here
			x += speed;
			if(speed > 0) { //if player is facing right
    if(x > initialX + 1024) { //and the bullet is more than 640px to the right of where it was spawned
        removeSelf(); //remove it
    }
} else { //else if player is facing left
    if(x < initialX - 1024) { //and bullet is more than 640px to the left of where it was spawned
        removeSelf(); //remove it
    }
}
		}

	}
	
}