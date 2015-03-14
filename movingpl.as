package  {
	import flash.display.MovieClip;
    import flash.events.Event;
	public class movingpl extends MovieClip {

        public var xSpeedConst:int = 3;
        public var flip:int = 1; 
		public function movingpl(xLocation:int, yLocation:int) {
            // constructor code
            x = xLocation;
            y = yLocation;
			addEventListener(Event.ENTER_FRAME, plloop);
			trace("working");
	}
	
	public function plloop(e:Event):void{
            if ((flip%2) == 1){
                y += xSpeedConst;
            } 
			else if((flip%2) == 0){
                y += (-xSpeedConst);
            }
			//code here
        }
	public function changeDirection():void{
           // trace("y ="+y);
            flip++;
        }
		public function removeSelf():void {
    trace("remove self");
    this.parent.removeChild(this); //tell this object's "parent object" to remove this object
    //in our case, the parent is the background because in the main code we said: back.addChild(bullet);
}
}
}
