var localScoreNumPaths:Array<String> = [];
var localScoreIncrePos:Int = 0;
for (i in 0...10) {
     localScoreIncrePos += 1;
     localScoreNumPaths.insert(localScoreIncrePos, 'num' + i + '.png');
}

var textScore1:FlxSprite = new FlxSprite(0, -20);                 // makeLuaSprite()
textScore1.loadGraphic('assets/images/' + localScoreNumPaths[0]); // loadGraphic()
textScore1.scale.set(0.5, 0.5);                                   // scaleObject()
textScore1.cameras = [game.camHUD];                               // setObjectCamera()
game.add(textScore1);                                             // addLuaSprite()

var textScore2:FlxSprite = new FlxSprite(50, -20);
textScore2.loadGraphic('assets/images/' + localScoreNumPaths[0]);
textScore2.scale.set(0.5, 0.5);
textScore2.cameras = [game.camHUD];
game.add(textScore2);

var textScore3:FlxSprite = new FlxSprite(100, -20);
textScore3.loadGraphic('assets/images/' + localScoreNumPaths[0]);
textScore3.scale.set(0.5, 0.5);
textScore3.cameras = [game.camHUD];
game.add(textScore3);

var textScore4:FlxSprite = new FlxSprite(150, -20);
textScore4.loadGraphic('assets/images/' + localScoreNumPaths[0]);
textScore4.scale.set(0.5, 0.5);
textScore4.cameras = [game.camHUD];
game.add(textScore4);

var textScore5:FlxSprite = new FlxSprite(200, -20);
textScore5.loadGraphic('assets/images/' + localScoreNumPaths[0]);
textScore5.scale.set(0.5, 0.5);
textScore5.cameras = [game.camHUD];
game.add(textScore5);

var textScore6:FlxSprite = new FlxSprite(250, -20);
textScore6.loadGraphic('assets/images/' + localScoreNumPaths[0]);
textScore6.scale.set(0.5, 0.5);
textScore6.cameras = [game.camHUD];
game.add(textScore6);

var textScore7:FlxSprite = new FlxSprite(300, -20);
textScore7.loadGraphic('assets/images/' + localScoreNumPaths[0]);
textScore7.scale.set(0.5, 0.5);
textScore7.cameras = [game.camHUD];
game.add(textScore7);

setVar('textScores', [textScore1, textScore2, textScore3, textScore4, textScore5, textScore6, textScore7]);
setVar('scoreNumImage', localScoreNumPaths);
//===//
function setTextScorePos(idNum:Int, pos:Array<Float>) {
     if (pos[0] != null) { getVar('textScores')[idNum].x = pos[0]; }
     if (pos[1] != null) { getVar('textScores')[idNum].y = pos[1]; }
}

function setTextGraphicPos(idNum:Int, pos:Array<Array<Numbers>>) {
     switch (getVar('amgus')[idNum]) {
          case 0: setTextScorePos(idNum, pos[0]); case 1: setTextScorePos(idNum, pos[1]);
          case 2: setTextScorePos(idNum, pos[2]); case 3: setTextScorePos(idNum, pos[3]);
          case 4: setTextScorePos(idNum, pos[4]); case 5: setTextScorePos(idNum, pos[5]);
          case 6: setTextScorePos(idNum, pos[6]); case 7: setTextScorePos(idNum, pos[7]);
          case 8: setTextScorePos(idNum, pos[8]); case 9: setTextScorePos(idNum, pos[9]);
     }
}

var count:Int = 6;
for (i in 0...7) {
     var concat:String = getVar('scoreNumImage')[getVar('amgus')[i]];
     getVar('textScores')[i].loadGraphic('assets/images/' + concat);
     setTextGraphicPos(i, getVar('gays')[count--]);
}