local shaderName = "exampleShader1"
function onCreate()
	shaderCoordFix() -- initialize a fix for textureCoord when resizing game window

	makeLuaSprite("exShader1")

	runHaxeCode([[
		var shaderName = "]] .. shaderName .. [[";
		
		game.initLuaShader(shaderName);
		
		shader0 = game.createRuntimeShader(shaderName);
		game.camGame.setFilters([new ShaderFilter(shader0)]);
		game.camHUD.setFilters([new ShaderFilter(shader0)]);
		game.getLuaObject("exShader1").shader = shader0; // setting it into temporary sprite so luas can set its shader uniforms/properties
	]])
	
	setShaderSampler2D("exShader1", "bitmap1", "potato")
end

function onUpdate()
	setShaderFloat("exShader1", "time", getSongPosition() / 1000)
end

function shaderCoordFix()
	runHaxeCode([[
		resetCamCache = function(?spr) {
			if (spr == null || spr.filters == null) return;
			spr.__cacheBitmap = null;
			spr.__cacheBitmapData3 = spr.__cacheBitmapData2 = spr.__cacheBitmapData = null;
			spr.__cacheBitmapColorTransform = null;
		}
		
		fixShaderCoordFix = function(?_) {
			resetCamCache(game.camGame.flashSprite);
			resetCamCache(game.camHUD.flashSprite);
			resetCamCache(game.camOther.flashSprite);
		}
	
		FlxG.signals.gameResized.add(fixShaderCoordFix);
		fixShaderCoordFix();
	]])
	
	local temp = onDestroy
	function onDestroy()
		runHaxeCode([[
			FlxG.signals.gameResized.remove(fixShaderCoordFix);
		]])
		temp()
	end
end