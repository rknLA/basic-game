package
{
	import net.flashpunk.FP;
	import net.flashpunk.World;
	
	public class Level1 extends World
	{
		FP.screen.color = 0xFF9955;
		
		override public function begin():void
		{
			add(new TheEnemy);
			add(new TheHero);
		}
		
		override public function update():void
		{
			super.update();
		}
		
	}
}