
/*
 * MonsterEntity
 * Created by Eqela Studio 2.0b7.4
 */

public class MonsterEntity : SEEntity
{

   SESprite monster;
    int w;
    int h;   
    int mx;
    int my;

	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		w = get_scene_width();
        h = get_scene_height();
		rsc.prepare_image("Missingno", "Missingno", 0.2*w , 0.2*h);
		monster = add_sprite_for_image(SEImage.for_resource("Missingno"));
		monster.move(Math.random(0,w), Math.random(0,h));
		
	}

	public void tick(TimeVal now, double delta) {
		base.tick(now, delta);
		mx = monster.get_x();
		my = monster.get_y();
		monster.move(mx+(IntroClass.x-mx)/Math.random(20,100), my+(IntroClass.y-my)/Math.random(20,100));
	}

	public void cleanup() {
		base.cleanup();
	}
}
