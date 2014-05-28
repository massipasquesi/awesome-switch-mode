--{{ start internet-connexion applet
awful.util.spawn("nm-applet &")
-- }}

--{{ start volume control applet
awful.util.spawn("gnome-sound-applet &")
-- }}

-- {{ start bluetooth-applet
awful.util.spawn("bluetooth-applet &")
-- }}

--{{ restart xscreensaver
--awful.util.spawn("xscreensaver-command -exit")
awful.util.spawn("xscreensaver -nosplash")
-- }}

