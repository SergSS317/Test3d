package;

import kha.System;
import kha.Framebuffer;
import kha.Color;
import kha.Shaders;
import kha.Assets;
import kha.Image;
import kha.System;
import kha.graphics4.TextureUnit;
import kha.graphics4.BlendingFactor;
import kha.graphics4.PipelineState;
import kha.graphics4.VertexStructure;
import kha.graphics4.VertexBuffer;
import kha.graphics4.IndexBuffer;
import kha.graphics4.FragmentShader;
import kha.graphics4.VertexShader;
import kha.graphics4.VertexData;
import kha.graphics4.Usage;
import kha.graphics4.ConstantLocation;
import kha.graphics4.CompareMode;
import kha.graphics4.CullMode;
import kha.math.FastMatrix4;
import kha.math.FastVector3;

/*class Main {

	public static function main() {
		System.init({title: "Empty", width: 640, height: 480}, init);
	}

	static function init() {
		var game = new Empty();
		System.notifyOnRender(game.render);
	}
}*/

class Empty {
	var sprite:Array<Sprite>;
	

    public function new() {
    	// Load all assets defined in khafile.js
    	Assets.loadEverything(loadingFinished);
    }

	function loadingFinished() {
		sprite = new Array<Sprite>();
		sprite.push(new Sprite());
		sprite.push(new Sprite());
		sprite.push(new Sprite());
		sprite.push(new Sprite());
    }

	public function render(frame:Framebuffer) {
		// A graphics object which lets us perform 3D operations
		var g = frame.g4;

		// Begin rendering
        g.begin();

        // Clear screen
		g.clear(Color.fromFloats(0.0, 0.0, 0.3), 1.0);
		for (sprt in sprite)
		{
		sprt.render(g);
		}

		// End rendering
		g.end();
    }
}
