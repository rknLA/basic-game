package
{
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.graphics.Image;
	
	public class TheEnemy extends Entity
	{
		private var enemyImage:Image;
		
		public function TheEnemy()
		{
			super();
			enemyImage = Image.createRect(16,16, 0xFFFFFF);
			setHitbox(16,16);
			type = "Enemy";
			graphic = enemyImage;
		}
		
		override public function update():void
		{
			
			var xsign:Number = 1;
			var ysign:Number = 1;(FP.random > 0.5) ? -1 : 1;
			
			if (x < 0)
			{
				xsign = 1;
			} else if (x > FP.screen.width) 
			{
				xsign = -1;
			} else
			{
				xsign = (FP.random > 0.5) ? -1 : 1;
			}
			
			if (y < 0)
			{
				ysign = 1;
			} else if (y > FP.screen.height) 
			{
				ysign = -1;
			} else
			{
				ysign = (FP.random > 0.5) ? -1 : 1;
			}
			
			x += FP.random * xsign;
			y += FP.random * ysign;
			
			var e:TheHero = collide("Hero", x, y) as TheHero;
			
			if (e) FP.world.remove(e);
		}
	}
}