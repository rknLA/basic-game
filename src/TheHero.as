package
{
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	
	public class TheHero extends Entity
	{
		private var heroImage:Image;
		
		private var playerSpeed:Number = 200;
		
		public function TheHero()
		{
			super();
			heroImage = Image.createRect(10,10, 0xFF0000);
			setHitbox(10,10);
			graphic = heroImage;
			x = FP.screen.width / 2;
			y = FP.screen.height / 2;
		}
		
		override public function update():void
		{
			if (Input.check(Key.LEFT))
			{
				x -= playerSpeed * FP.elapsed;
			}
			if (Input.check(Key.RIGHT))
			{
				x += playerSpeed * FP.elapsed;
			}
			if (Input.check(Key.UP))
			{
				y -= playerSpeed * FP.elapsed;
			}
			if (Input.check(Key.DOWN))
			{
				y += playerSpeed * FP.elapsed;
			}
			
			if (x < 0) x = 0;
			if (x + this.width > FP.screen.width) x = FP.screen.width - this.width;
			if (y < 0) y = 0;
			if (y + this.height > FP.screen.height) y = FP.screen.height - this.height; 
			
			super.update();
		}
	}
}