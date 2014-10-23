
/*
 * Superman
 * Created by Eqela Studio 2.0b7.4
 */

public class PlayerEntity: SEEntity
{
	SESprite ribbon;
	int w;
	int h;
	public static int x;
	public static int y;

	public void initialize(SEResourceCache rsc)
	{
		base.initialize(rsc);
		w = get_scene_width();
		h = get_scene_height();
		rsc.prepare_image("myribbon","ribbon", 0.1*w);
		ribbon = add_sprite_for_image(SEImage.for_resource("myribbon"));
		ribbon.move(0.5*w, 0.5*h);
	}

	public void tick(TimeVal now, double delta)
	{
		base.tick(now, delta);
		ribbon.move(MainScene.x, MainScene.y);
		x = ribbon.get_x();
		y = ribbon.get_y();
	}
	
	public void cleanup()
	{
		base.cleanup();
	}

	
}
