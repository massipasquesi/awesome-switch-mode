--{{ start indicator-applet-complete
--awful.util.spawn("indicator-applet-complete &")
-- }}

--{{ start internet-connexion applet
--awful.util.spawn("nm-applet &")
-- }}

--{{ start battery-status applet
--awful.util.spawn("/usr/lib/battery-status/battery-status --indicator &")
-- }}

--{{ SOUND 
-- start volume control applet
--awful.util.spawn("gnome-sound-applet &")
-- start audio-recorder
--awful.util.spawn("audio-recorder &")
-- }}

-- {{ start bluetooth-applet
--awful.util.spawn("bluetooth-applet &")
-- }}

-- {{ TIME
-- start indicator-datetime
--awful.util.spawn("/usr/lib/indicator-datetime &")
-- start alarm-clock-applet
--awful.util.spawn("alarm-clock-applet &")
-- }}

--{{ restart xscreensaver
--awful.util.spawn("xscreensaver-command -exit")
--awful.util.spawn("xscreensaver -nosplash")
-- }}

