-- local music = require("hs-music")
hs.window.animationDuration = 0.1 -- shorten animations

-- stroing the leader keys
keys = {
    a   = { "alt"  },
    c   = { "ctrl" },
    cs  = { "ctrl", "shift" },
    ca  = { "ctrl", "alt"},
}


local appPath = {
    Code="/Applications/Visual Studio Code.app",
    iTerm2="/Applications/iTerm.app",
    Tweetbot="/Applications/Tweetbot.app",
}

-- shortcut for general test
hs.hotkey.bind(keys.ca, "t", function()
    -- local app = hs.application.find("iTerm2")
    -- hs.alert.show(app:path())
    hs.alert.show(hs.application.frontmostApplication():name())
end)


-- Toggle an application between being the frontmost app, and being hidden
-- Application hotkeys
-- hyperalts = {
--     -- a="Airmail",
--     -- e="Finder",
--     v="Code",
--     -- s="Safari",
--     -- m="iTunes",
--     -- t="Tweetbot",
-- }

-- function altFunctions(keys)
-- end

-- -- Nudge window by grid
-- -- hs.hotkey.bind(keys.ca, "right", function() hs.grid.pushWindowRight() end)
-- -- hs.hotkey.bind(keys.ca, "left", function() hs.grid.pushWindowLeft() end)
-- -- hs.hotkey.bind(keys.ca, "up", function() hs.grid.pushWindowUp() end)
-- -- hs.hotkey.bind(keys.ca, "down", function() hs.grid.pushWindowDown() end)
-- for _hotkey in pairs(hyperalts) do
--     hs.hotkey.bind({"alt"}, _hotkey, function() toggle_application(hyperalts[_hotkey]) end)
-- end

local function keyCode(key)
    modifiers = modifiers or {}
    return function()
        hs.eventtap.event.newKeyEvent(modifiers, string.lower(key), true):post()
        hs.timer.usleep(1000)
        hs.eventtap.event.newKeyEvent(modifiers, string.lower(key), false):post()
    end
end


-- delay = hs.eventtap.keyRepeatDelay()
delay = 0.1
-- local hs.eventtap.keyRepeatDelay() = 0.1

hs.hotkey.bind(keys.c, 'h', keyCode('left') ,  nil,   keyCode('left'))
hs.hotkey.bind(keys.c, 'j', keyCode('down') ,  nil,   keyCode('down') )
hs.hotkey.bind(keys.c, 'k', keyCode('up')   ,  nil,   keyCode('up') )
hs.hotkey.bind(keys.c, 'l', keyCode('right'),  nil,   keyCode('right') )


-------------------------------------------------------------------------------
hs.hotkey.bind({"cmd","ctrl", "shift"}, "w", function()
    hs.grid.show()
    -- hs.alert.show("!!!!!!!!!!⚠️  Fuck the Fuck off  ⚠️!!!!!!!!!!")
    -- hs.alert.show(delay)
end)

local showtime =hs.hotkey.bind({"cmd","ctrl", "shift"}, "r", function()
    local time = hs.timer.localTime()
    local x = math.floor(time/3600)
    local y = math.floor((time - x * 3600)/60)
    hs.alert.show(tostring(x)..":"..tostring(y))
    hs.alert.show(hs.eventtap.keyRepeatDelay()
        )
    -- hs.alert.show(tostring(y))
end)

function reloadConfig(files)
    doReload = false
    for _,file in pairs(files) do
        if file:sub(-4) == ".lua" then
            doReload = true
        end
    end
    if doReload then
        hs.reload()
    end
end
local myWatcher = hs.pathwatcher.new(os.getenv("HOME") .. "/.hammerspoon/", reloadConfig):start()
hs.alert.show("Config loaded")



-- resizing window
-- local altKey = {"alt"}

-- local resizeMappings = {
--     h={0.5, 1},
--     l={1, 0.5},
-- }

-- for key in pairs(resizeMappings) do
--     hs.hotkey.bind(altKey, key, function()
--         local win = hs.window.focusedWindow()
--         if win then win:setSize(win:size():scale(resizeMappings[key])) end
--     end)
-- end

-- hs.hotkey.bind(altKey, key, function()
--     local win = hs.window.focusedWindow()
--     if win then win:setSize(win:size():scale({1, 0.5}))
--     end
-- end)

hs.hotkey.bind(keys.a, 'j', function ()
    local win=hs.window.focusedWindow()
    if win then
        win:setSize(win:size():scale({1, 2}))
    end
end)

hs.hotkey.bind(keys.a, 'k', function ()
    local win=hs.window.focusedWindow()
    if win then
        win:setSize(win:size():scale({1, 0.5}))
    end
end)


-- hs.hotkey.bind(keys.a, 'l', function ()
--     local win=hs.window.focusedWindow()
--     if win then
--         win:setSize(win:size():scale({0.5, 1}))
--     end
-- end)


-- hs.hotkey.bind(keys.a, 'h', function ()
--     local win=hs.window.focusedWindow()
--     if win then
--         win:setSize(win:size():scale({1, 0.5}))
--     end
-- end)

local resizeMappings = {
    h={x=0, y=0, w=0.5, h=1},
    -- j={x=0, y=0.5, w=1, h=0.5},
    -- J={x=0, y=0.2, w=1, h=0.5},
    -- k={x=0, y=0, w=1, h=0.5},
    -- K={x=0, y=0, w=1, h=0.5},
    l={x=0.5, y=0, w=0.5, h=1},
    n={x=0, y=0, w=1, h=1},
    -- u={x=0, y=0, w=0.33, h=1},
    i={x=0.2, y=0, w=0.6, h=1},
    -- o={x=0.33, y=0, w=0.67, h=0.5},
}


for key in pairs(resizeMappings) do
    hs.hotkey.bind(keys.a, key, function()
        local win = hs.window.focusedWindow()
        if win then win:moveToUnit(resizeMappings[key]) end
    end)
end

---------------------------------------------------------------------------------

editting = {
    cW,
    cD,
    cQ,
    cB,
    cF,
}

cW= hs.hotkey.bind(keys.c, "w", function()
    hs.eventtap.keyStroke({'alt'}, "delete")
end)

cD = hs.hotkey.bind(keys.c, "d", function()
    hs.eventtap.keyStroke({'alt'}, "right", 0)
    hs.eventtap.keyStroke({'alt'}, "delete", 0)
end)

editting.cQ = hs.hotkey.bind(keys.c, "q", function()
    hs.eventtap.keyStroke({'cmd'}, "delete")
end)

editting.cB = hs.hotkey.bind(keys.c, "b", function()
    hs.eventtap.keyStroke({'alt'}, "left")
end)

editting.cF = hs.hotkey.bind(keys.c, "f", function()
    hs.eventtap.keyStroke({'alt'}, "right")
end)



local ctrl_shift = { 'ctrl', 'shift' }
-- selecting words
hs.hotkey.bind(keys.cs, "b", function()
    hs.eventtap.keyStroke({'alt', 'shift'}, "left")
end)

hs.hotkey.bind(keys.cs, "f", function()
    hs.eventtap.keyStroke({'alt', 'shift'}, "right")
end)

hs.hotkey.bind(keys.cs, "h", function()
    hs.eventtap.keyStroke({'shift'}, "left")
end)

hs.hotkey.bind(keys.cs, "l", function()
    hs.eventtap.keyStroke({'shift'}, "right")
end)

hs.hotkey.bind(keys.c, "g", function()
    hs.eventtap.keyStroke({}, "delete")
end)

function toggle_application(_app, path)
    -- Finds running applications
    local app = hs.application.find(_app)
    if app:isFrontmost() then
        app:hide()
        -- hs.alert.show(app:isRunning())
    elseif not app:isFrontmost() then
        -- hs.alert.show('haha')
        hs.application.launchOrFocus(path)
    end
end

altV =hs.hotkey.bind(keys.a, "v", function()
    toggle_application("Code",appPath.Code)
end)

altV:enable()

hs.hotkey.bind(keys.a, "t", function()
    toggle_application('Tweetbot', appPath.Tweetbot)
end)

-- disable alt-v for Adobe's built-in shortcut
function applicationWatcher(appName, eventType, appObject)
    if (eventType == hs.application.watcher.activated) then
        if (string.find(appName, 'iTerm')) then
            -- for i,v in pairs(editting) do
            --     v:disable()
            -- end
            cD:disable()
            cW:disable()
        else 
            -- for i,v in pairs(editting) do
            --     v:disable()
            -- end
            cW:enable()
            cD:enable()
            -- hs.alert.show(editting.cD)
        end
        if (string.find(appName, 'Adobe')) then
            -- altV:disable()
        else
            -- altV:enable()
        end
    end
end
-- end
local appWatcher = hs.application.watcher.new(applicationWatcher)
appWatcher:start()
