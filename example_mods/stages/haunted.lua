function onCreate()

    makeLuaSprite('bg', 'assets/halloween_bg_low', -200, 0);
    setLuaSpriteScrollFactor(0.9, 0.9);
    setProperty('bg.scale.x', getProperty('bg.scale.x') + 0.4);
    setProperty('bg.scale.y', getProperty('bg.scale.y') + 0.4);


    setProperty('dad.alpha', 0.5);
    setProperty('iconP2.alpha', 0.5);

    addLuaSprite('bg', false);
end