-- Beschreibung auf Deutsch oder Englisch, je nach KOReader-Sprache
local ok, lang = pcall(function() return G_reader_settings:readSetting("language") end)
local de = ok and type(lang) == "string" and lang:sub(1, 2):lower() == "de"
return {
    fullname = de and "Zen-Seitenbrowser per Geste" or "Zen page browser gesture",
    description = de
        and "Fügt die Aktion „Zen-Seitenbrowser“ für Gesten hinzu. So lässt sich der ZenOS-Seitenbrowser auf eine beliebige Geste legen, während Wischen nach oben das normale untere Menü öffnet. Benötigt ZenOS."
        or "Adds a \"Zen page browser\" action for gestures, so ZenOS's page browser can be put on any gesture while swiping up opens the normal bottom menu. Requires ZenOS.",
}
