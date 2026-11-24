-- Zen-Seitenbrowser per Geste
--
-- ZenOS oeffnet seinen Seitenbrowser nur ueber "Wischen nach oben" und meldet ihn nicht als
-- Gesten-Aktion an. Schaltet man ihn in ZenOS aus (damit Wischen nach oben wieder KOReaders unteres
-- Menue oeffnet), kommt man nicht mehr an ihn heran.
--
-- Dieses Plugin meldet die Aktion "Zen-Seitenbrowser" an. Beim Ausloesen sucht es ZenOS' eigene
-- Funktion open_page_browser (sie haengt an KOReaders ReaderConfig.onSwipeShowConfigMenu, das ZenOS
-- umleitet) und ruft sie auf. ZenOS-Einstellungen werden dabei nicht veraendert.
local Dispatcher = require("dispatcher")
local InfoMessage = require("ui/widget/infomessage")
local UIManager = require("ui/uimanager")
local WidgetContainer = require("ui/widget/container/widgetcontainer")

local function de()
    local ok, lang = pcall(function() return G_reader_settings:readSetting("language") end)
    return ok and type(lang) == "string" and lang:sub(1, 2):lower() == "de"
end

local function title()
    return de() and "Zen-Seitenbrowser" or "Zen page browser"
end

local function not_found_text()
    return de()
        and "Der Zen-Seitenbrowser wurde nicht gefunden. Ist ZenOS installiert und aktiv?"
        or "The Zen page browser was not found. Is ZenOS installed and enabled?"
end

-- Sucht in den Upvalues einer Funktion (und darin verschachtelter Funktionen) nach einer Funktion
-- mit dem gegebenen Namen. Tiefe begrenzt, bereits besuchte Funktionen werden uebersprungen.
local function find_upvalue_fn(fn, wanted, depth, seen)
    if type(fn) ~= "function" or depth < 0 or seen[fn] then return nil end
    seen[fn] = true
    local i = 1
    while true do
        local name, value = debug.getupvalue(fn, i)
        if not name then break end
        if name == wanted and type(value) == "function" then return value end
        if type(value) == "function" then
            local found = find_upvalue_fn(value, wanted, depth - 1, seen)
            if found then return found end
        end
        i = i + 1
    end
    return nil
end

local function find_open_page_browser()
    local ok, ReaderConfig = pcall(require, "apps/reader/modules/readerconfig")
    if not ok or not ReaderConfig then return nil end
    local seen = {}
    for _, key in ipairs({ "onSwipeShowConfigMenu", "onTapShowConfigMenu" }) do
        local found = find_upvalue_fn(ReaderConfig[key], "open_page_browser", 3, seen)
        if found then return found end
    end
    return nil
end

local ZenBrowserGesture = WidgetContainer:extend{
    name = "zenbrowsergesture",
    is_doc_only = false,
}

function ZenBrowserGesture:onDispatcherRegisterActions()
    Dispatcher:registerAction("zen_page_browser", {
        category = "none",
        event = "ShowZenPageBrowser",
        title = title(),
        reader = true,
    })
end

function ZenBrowserGesture:init()
    self:onDispatcherRegisterActions()
end

function ZenBrowserGesture:onShowZenPageBrowser()
    if not self.ui or not self.ui.document then return false end
    local open_page_browser = find_open_page_browser()
    if not open_page_browser then
        UIManager:show(InfoMessage:new{ text = not_found_text(), timeout = 4 })
        return true
    end
    local ok, err = pcall(open_page_browser, self.ui)
    if not ok then
        require("logger").warn("ZenBrowserGesture: opening page browser failed", err)
        UIManager:show(InfoMessage:new{ text = not_found_text(), timeout = 4 })
    end
    return true
end

return ZenBrowserGesture
