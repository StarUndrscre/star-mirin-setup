-- StarUndrscre's Definemods

local p1DefaultX = P1:GetX()
local p2DefaultX = P2:GetX()
local defaultZ = P1:GetZ()
definemod { 'centerPlayfields', function(percent) 
    local scale = percent / 100
    P1:x((scale*scx) + ((1-scale)*p1DefaultX))
    P2:x((scale*scx) + ((1-scale)*p2DefaultX))
end }

definemod {'speen', function(percent)
    local p = percent/100
    local confusionyoffset = (math.rad(-360)*100)*p
    local rotationy = 360*p
    return confusionyoffset, rotationy
end, 'confusionyoffset', 'rotationy'}

definemod {'bgzoom', function(percent)
    local actualPercent = percent / 100
    bg:zoom(actualPercent)
end}

definemod {'bgrotatex', function(percent)
    bg:rotationx(percent)
end}

definemod {'bgrotatey', function(percent)
    bg:rotationy(percent)
end}

definemod {'bgrotatez', function(percent)
    bg:rotationz(percent)
end}

definemod {'bgmovex', function(percent)
    bg:x(SCREEN_CENTER_X+percent)
end}

definemod {'bgmovey', function(percent)
    bg:y(SCREEN_CENTER_Y+percent)
end}

definemod {'bgmovez', function(percent)
    bg:z(percent)
end}

definemod {'bgalpha', function(percent)
    local actualPercent = percent / 100
    bg:glow(0, 0, 0, actualPercent)
end}

-- put other definemods here:



-- apply defaults
setdefault {100, 'bgzoom', 50, 'bgalpha'}