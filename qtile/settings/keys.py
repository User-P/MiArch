#Alex108-lab
# Qtile keybindings

from libqtile.config import Key
from libqtile.command import lazy


mod = "mod4"
keys = [Key(key[0], key[1], *key[2:]) for key in [
    # ------------ Window Configs ------------

    # Switch between windows in current stack pane
    ([mod], "h", lazy.layout.left()),
    ([mod], "l", lazy.layout.right()),
    ([mod], "j", lazy.layout.down()),
    ([mod], "k", lazy.layout.up()),
    ([mod], "space", lazy.layout.next()),

    # Change window sizes (MonadTall)
    ([mod, "shift"], "l", lazy.layout.grow()),
    ([mod, "shift"], "h", lazy.layout.shrink()),

    # Toggle floating
    ([mod, "shift"], "f", lazy.window.toggle_floating()),

    # Move windows up or down in current stack
    ([mod, "shift"], "j", lazy.layout.shuffle_down()),
    ([mod, "shift"], "k", lazy.layout.shuffle_up()),

    # Toggle between different layouts as defined below
    ([mod], "Tab", lazy.next_layout()),
    ([mod, "shift"], "Tab", lazy.prev_layout()),

    # Kill window
    ([mod], "w", lazy.window.kill()),

    #rofi
    ([mod], "m", lazy.spawn("rofi -show drun")),
    ([mod], "y", lazy.spawn("rofi -show emoji -modi emoji")),
    ([mod], "p", lazy.spawn("rofi -show window")),
    # Switch focus of monitors
    ([mod], "period", lazy.next_screen()),
    ([mod], "comma", lazy.prev_screen()),

    # Restart Qtile
    ([mod, "control"], "r", lazy.restart()),

    ([mod, "control"], "q", lazy.shutdown()),
    

    # ArcoLinux Logout
    ([mod], "x", lazy.spawn("arcolinux-logout")),

    # ------------ App Configs ------------

    # ([mod], "r", lazy.spawncmd()),
    
    ([mod,"shift"], "x", lazy.spawn("shutdown now")),
    ([mod,"shift"], "z", lazy.spawn("reboot")),
    # Browser
    ([mod], "b", lazy.spawn("brave")),
    #([mod, "control"], "b", lazy.spawn("vivaldi-stable")),
    ([mod, "shift"], "b", lazy.spawn("firefox")),

    # File Explorer
    ([mod], "e", lazy.spawn("thunar")),

    # Terminal
    ([mod], "Return", lazy.spawn("alacritty")),

    # Redshift
    ([mod], "r", lazy.spawn("redshift -O 2400")),
    ([mod, "shift"], "r", lazy.spawn("redshift -x")),

    # Screenshot
    #([mod], "s", lazy.spawn("scrot")),

    # ------------ Hardware Configs ------------

    # Volume
    ([], "XF86AudioLowerVolume", lazy.spawn(
        "pactl set-sink-volume @DEFAULT_SINK@ -5%"
    )),
    ([], "XF86AudioRaiseVolume", lazy.spawn(
        "pactl set-sink-volume @DEFAULT_SINK@ +5%"
    )),
    ([], "XF86AudioMute", lazy.spawn(
        "pactl set-sink-mute @DEFAULT_SINK@ toggle"
    )),

    #PrintScrenn
    ([],"Print",lazy.spawn("flameshot gui")),

    # Brightness
    ([], "XF86MonBrightnessUp", lazy.spawn("brightnessctl set +3%")),
    ([], "XF86MonBrightnessDown", lazy.spawn("brightnessctl set 3%-")),
]]
