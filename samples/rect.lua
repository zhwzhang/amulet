local am = amulet

local win = am.window{}

local rect = am.rect(-0.5, -0.5, 0.5, 0.5, vec4(0.6, 0.9, 0.1, 1)):blend("add")

local
function rand_color()
    return vec4(math.random(), math.random(), math.random(), 1)
end
rect:action(coroutine.create(function(node)
    while true do
        am.wait(am.tween{target = node, x1 = -math.random(), color = rand_color(), time = 0.3, ease = am.ease.sine})
        am.wait(am.tween{target = node, y1 = -math.random(), color = rand_color(), time = 0.3, ease = am.ease.sine})
        am.wait(am.tween{target = node, x2 = math.random(), color = rand_color(), time = 0.3, ease = am.ease.sine})
        am.wait(am.tween{target = node, y2 = math.random(), color = rand_color(), time = 0.3, ease = am.ease.sine})
    end
end))

win.root = rect
    :bind("MV", mat4(1)):bind("P", mat4(1))