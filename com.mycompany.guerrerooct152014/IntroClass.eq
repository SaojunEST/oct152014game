
/*
 * IntroClass
 * Created by Eqela Studio 2.0b7.4
 */

public class IntroClass : SEScene
{

    SESprite back;
    int w;
    int h;
    public static int x;
    public static int y;
    int i;

	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
        add_entity(SESpriteEntity.for_color(Color.instance("white"), get_scene_width(), get_scene_height()));
        w = get_scene_width();
        AudioClipManager.prepare("Beep1");
        h = get_scene_height();
        rsc.prepare_image("bg", "bg", w, h);
        back = add_sprite_for_image(SEImage.for_resource("bg"));
        back.move(0,0);
        add_entity(new PlayerEntity());
        for(i=0; i<Math.random(15,20); i++) {
	    add_entity(new MonsterEntity());
        }
        AudioClipManager.play("Beep1");
        {
        switch_scene(new GameOverClass());	 
	   }
	}

    public void on_pointer_move(SEPointerInfo pi) {
	     base.on_pointer_move(pi);
	     x = pi.get_x();
	     y = pi.get_y();
}

	public void cleanup() {
		base.cleanup();
	}
}