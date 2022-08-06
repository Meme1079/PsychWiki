function onCreate()
     addCharacterToList('bf-dead', 'boyfriend');
     setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-dead') -- put the character name
     setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx'); -- put the sound when you die
     setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOverEnd'); -- put the music when it's looping
     setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameover2'); -- put the sound when you press return
end
