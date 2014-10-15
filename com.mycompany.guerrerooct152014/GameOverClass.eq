
/*
 * GameOverClass
 * Created by Eqela Studio 2.0b7.4
 */

public class GameOverClass : SEScene
{
	SESprite rip;
    int w;
    int h;
    public static int x;
    public static int y;
    int i;

	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
        add_entity(SESpriteEntity.for_color(Color.instance("white"), get_scene_width(), get_scene_height()));
        w = get_scene_width();
        h = get_scene_height();
        AudioClipManager.prepare("evil");
        rsc.prepare_image("game over", "game over", w, h);
        rip = add_sprite_for_image(SEImage.for_resource("game over"));
        rip.move(0,0);
        AudioClipManager.play("evil");
}

	public void cleanup() {
		base.cleanup();
	}
}
