function onEvent(name, value1, value2)
    if name == "Image Flash" then
    makeLuaSprite('image', value1, 0, 0);
    setProperty('image.scale.x', getProperty('image.scale.x') + 100);
    setProperty('image.scale.y', getProperty('image.scale.y') + 100);
    addLuaSprite('image', true);
    doTweenColor('hello', 'image', 'FFFFFFFF', 0, 'quartIn');
    setObjectCamera('image', 'other');
    runTimer('wait', value2);
    end
    end
    
    function onTimerCompleted(tag, loops, loopsleft)
    if tag == 'wait' then
    doTweenAlpha('byebye', 'image', 0, 0.3, 'linear');
    end
    end
    
    function onTweenCompleted(tag)
    if tag == 'byebye' then
    removeLuaSprite('image', true);
    end
    end