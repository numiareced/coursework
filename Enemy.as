package
{
    import flash.display.MovieClip;
    import flash.events.Event;
 
    public class Enemy extends MovieClip
    {
		
		private var xSpeedConst:int = 2;
        public var flip:int = 1; 
		
        public function Enemy(xLocation:int, yLocation:int)
        {
            // constructor code
            x = xLocation;
            y = yLocation;
			this.hitpoint.visible=false;
 
            addEventListener(Event.ENTER_FRAME, loop);
        }
 
        public function loop(e:Event):void
        {   
			if ((flip%2) == 1){
                x += xSpeedConst;
				this.scaleX=-1;
            } else if((flip%2) == 0){
                x += (-xSpeedConst);
				this.scaleX=1;
            }
            //the looping code goes here
        }
 
        public function removeSelf():void
        {
            trace("remove self");
            removeEventListener(Event.ENTER_FRAME, loop); //stop the loop
            this.parent.removeChild(this); //tell this object's "parent object" to remove this object
        }
		
		public function changeDirection():void{
           // trace("x ="+x);
            flip++;
        }
 
    }
 
}