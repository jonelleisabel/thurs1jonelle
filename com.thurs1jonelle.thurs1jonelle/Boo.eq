
/*
 * PlayEntity
 * Created by Eqela Studio 2.0b7.4
 */

public class Boo  : SEEntity
{
		SESprite boo;
		int w;
		int h;
		int mx;
		int my;
		int pix;
		int py;
		int xx;
		int yy;
		SESprite text;

		public void initialize(SEResourceCache rsc)
		{
			base.initialize(rsc);
			w = get_scene_width();
			h = get_scene_height();			
			rsc.prepare_image("myboo", "boo", 0.1*w);
			boo = add_sprite_for_image(SEImage.for_resource("myboo"));
			boo.move(Math.random(0,w), Math.random(0,h));

			rsc.prepare_font("myfont", "arial bold color=black", 40);
			text = add_sprite_for_text(" ", "myfont");
			text.move(0, h-text.get_height());
				
			
		}

		public void tick(TimeVal now, double delta)
		{
			mx = boo.get_x();
			my = boo.get_y();
			pix = MainScene.x;
			py = MainScene.y;
			base.tick(now, delta);

			xx = (mx+(pix-mx)/200);
			yy = (my+(py-my)/200);
			
			boo.move(xx,yy);

			if((mx/pix) ==  1  && (my/py) == 1)
			{
				text.set_text("GAME OVER");
			}
			
		}

		public void cleanup()
		{
			base.cleanup();
		}

		
}