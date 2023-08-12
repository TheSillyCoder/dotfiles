local filesystem = require('gears.filesystem')

-- Thanks to jo148 on github for making rofi dpi aware!
local with_dpi = require('beautiful').xresources.apply_dpi
local get_dpi = require('beautiful').xresources.get_dpi
local rofi_command = 'env /usr/bin/rofi -dpi ' ..
    get_dpi() ..
    ' -width ' ..
    with_dpi(400) ..
    ' -show drun -theme ' ..
    filesystem.get_configuration_dir() ..
    '/configuration/rofi.rasi -run-command "/bin/bash -c -i \'shopt -s expand_aliases; {cmd}\'"'

return {
    -- List of apps to start by default on some actions
    default = {
        terminal = 'alacritty',
        rofi = rofi_command,
        lock = 'i3lock -i "/home/anon/.wallpapers/lockscreen.png" -e',
        quake = 'terminator',
        screenshot = 'flameshot screen -p ~/Pictures',
        region_screenshot = 'flameshot gui -p ~/Pictures',
        delayed_screenshot = 'flameshot screen -p ~/Pictures -d 5000',
        editor = 'gvim', -- gui text editor
        browser = 'firefox',
        privateBrowser = 'firefox --private-window',
        social = 'discord',
        game = rofi_command,
        files = 'nautilus',
        music = "LD_PRELOAD=/usr/local/lib/spotify-adblock.so spotify"
    },
    -- List of apps to start once on start-up
    run_on_start_up = {
        "variety",
        'compton --config ' .. filesystem.get_configuration_dir() .. '/configuration/compton.conf',
        'nm-applet --indicator',                                                                                                           -- wifi
        "xinput --set-prop 11 324 1",                                                                                                      -- tap to click
        "xinput set-prop 11 332 1",                                                                                                        -- natural scrolling
        'pnmixer',                                                                                                                         -- shows an audiocontrol applet in systray when installed.
        --'blueberry-tray', -- Bluetooth tray icon
        'numlockx on',                                                                                                                     -- enable numlock
        'playerctld',                                                                                                                      --playerctld
        '/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 & eval $(gnome-keyring-daemon -s --components=pkcs11,secrets,ssh,gpg)', -- credential manager
        'flameshot',
        'xfce4-power-manager',
        -- Add applications that need to be killed between reloads
        -- to avoid multipled instances, inside the awspawn script
        '~/.config/awesome/configuration/awspawn' -- Spawn "dirty" apps that can linger between sessions
    }
}
