set-option -g activity-action other
set-option -g assume-paste-time 1
set-option -g base-index 0
set-option -g bell-action none
set-option -g default-command ""
set-option -g default-shell "/bin/zsh"
set-option -g default-size "80x24"
set-option -g destroy-unattached off
set-option -g detach-on-destroy on
set-option -g display-panes-active-colour red
set-option -g display-panes-colour blue
set-option -g display-panes-time 1000
set-option -g display-time 750
set-option -g history-limit 2000
set-option -g key-table "root"
set-option -g lock-after-time 0
set-option -g lock-command "lock -np"
set-option -g message-command-style fg=yellow,bg=black
set-option -g message-style fg=black,bg=yellow
set-option -g mouse on
set-option -g prefix C-b
set-option -g prefix2 None
set-option -g renumber-windows off
set-option -g repeat-time 500
set-option -g set-titles off
set-option -g set-titles-string "#S:#I:#W - \"#T\" #{session_alerts}"
set-option -g silence-action other
set-option -g status on
set-option -g status-bg green
set-option -g status-fg black
set-option -g status-format[0] "#[align=left range=left #{status-left-style}]#{T;=/#{status-left-length}:status-left}#[norange default]#[list=on align=#{status-justify}]#[list=left-marker]<#[list=right-marker]>#[list=on]#{W:#[range=window|#{window_index} #{window-status-style}#{?#{&&:#{window_last_flag},#{!=:#{window-status-last-style},default}}, #{window-status-last-style},}#{?#{&&:#{window_bell_flag},#{!=:#{window-status-bell-style},default}}, #{window-status-bell-style},#{?#{&&:#{||:#{window_activity_flag},#{window_silence_flag}},#{!=:#{window-status-activity-style},default}}, #{window-status-activity-style},}}]#{T:window-status-format}#[norange default]#{?window_end_flag,,#{window-status-separator}},#[range=window|#{window_index} list=focus #{?#{!=:#{window-status-current-style},default},#{window-status-current-style},#{window-status-style}}#{?#{&&:#{window_last_flag},#{!=:#{window-status-last-style},default}}, #{window-status-last-style},}#{?#{&&:#{window_bell_flag},#{!=:#{window-status-bell-style},default}}, #{window-status-bell-style},#{?#{&&:#{||:#{window_activity_flag},#{window_silence_flag}},#{!=:#{window-status-activity-style},default}}, #{window-status-activity-style},}}]#{T:window-status-current-format}#[norange list=on default]#{?window_end_flag,,#{window-status-separator}}}#[nolist align=right range=right #{status-right-style}]#{T;=/#{status-right-length}:status-right}#[norange default]"
set-option -g status-format[1] "#[align=centre]#{P:#{?pane_active,#[reverse],}#{pane_index}[#{pane_width}x#{pane_height}]#[default] }"
set-option -g status-interval 15
set-option -g status-justify left
set-option -g status-keys vi
set-option -g status-left "[#S] "
set-option -g status-left-length 10
set-option -g status-left-style default
set-option -g status-position bottom
set-option -g status-right "%H:%M"
set-option -g status-right-length 40
set-option -g status-right-style default
set-option -g status-style fg=black,bg=green
set-option -g update-environment[0] "DISPLAY"
set-option -g update-environment[1] "KRB5CCNAME"
set-option -g update-environment[2] "SSH_ASKPASS"
set-option -g update-environment[3] "SSH_AUTH_SOCK"
set-option -g update-environment[4] "SSH_AGENT_PID"
set-option -g update-environment[5] "SSH_CONNECTION"
set-option -g update-environment[6] "WINDOWID"
set-option -g update-environment[7] "XAUTHORITY"
set-option -g visual-activity off
set-option -g visual-bell off
set-option -g visual-silence off
set-option -g word-separators " -_@"
