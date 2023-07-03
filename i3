# Include it in main config like this:
#
#     include ~/mydotfiles/i3
#
# Make sure you comment out duplicate bindings in the main config

exec xautolock -time 10 -locker "i3lock -c 00bbcc -f"
bindsym $mod+l exec i3lock -c 00bbcc -f

# navigate tabbed with z/x
bindsym $mod+z focus left
bindsym $mod+x focus right
# navigate stacked with q/tab
bindsym $mod+q focus up
bindsym $mod+Tab focus down

bindsym $mod+Shift+z move left
bindsym $mod+Shift+x move right
bindsym $mod+Shift+w move up
bindsym $mod+Shift+Tab move down

font pango:monospace 16

# pressing mod+num in the num workspace will get you back to your last workspace
workspace_auto_back_and_forth yes

# Marks
show_marks yes
# read 1 character and mark the current window with this character
bindsym $mod+m exec i3-input -F 'mark %s' -l 1 -P 'Mark: ' -f "pango:monospace 24"
# read 1 character and go to the window with the character
bindsym $mod+space exec i3-input -F '[con_mark="%s"] focus' -l 1 -P 'Goto: ' -f "pango:monospace 24"

for_window [all] title_window_icon on
