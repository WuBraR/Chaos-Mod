local allowCountdown = false
local y = 50
local motherfucking = 0
local the = 0
local t = 0
-- stolen from bbpanzu fUCK YOU! - aflac
local u = false;
local r = 0;
local shot = false;
local agent = 1
local health = 0;
local xx = 470;
local yy = 500;
local xx2 = 990;
local yy2 = 600;
local ofs = 50;
local followchars = true;
local del = 0;
local del2 = 0;
local drain = 0.01 -- the funne

function onUpdate()
	if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom',0.6)
        else
            setProperty('defaultCamZoom',0.9)
        end
   
    end
end

function onUpdate()
	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == false then
            setProperty('defaultCamZoom',0.6)
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos',xx-ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos',xx+ofs,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos',xx,yy-ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
                triggerEvent('Camera Follow Pos',xx,yy+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx,yy)
            end
        else

            setProperty('defaultCamZoom',0.9)
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
            if getProperty('dad.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
    
end


function onCreate()

    makeLuaSprite('bg', 'halloween_bg_low', -200, 0);
    setLuaSpriteScrollFactor(0.9, 0.9);
    setProperty('bg.scale.x', getProperty('bg.scale.x') + 0.4);
    setProperty('bg.scale.y', getProperty('bg.scale.y') + 0.4);

    addLuaSprite('bg', false);

    makeLuaSprite('black', 'balls', 0, 0);
    setLuaSpriteScrollFactor(0.9, 0.9);
    setProperty('black.scale.x', getProperty('black.scale.x') + 0.8);
    setProperty('black.scale.y', getProperty('black.scale.y') + 0.8);

    precacheImage('black', true);

end

function onStepHit()
    if curStep == 949 then --949
        addLuaSprite('black', false);
    end
end