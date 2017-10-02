set -g prefix C-a
set -s escape-time 1
set -g base-index 1
setw -g pane-base-index 1

bind | split-window -h
bind _ split-window -v

bind -r h select-pane -L
bind -r j select-pane -D
bind -r k select-pane -U
bind -r l select-pane -R

bind -r C-h select-window -t :-
bind -r C-l select-window -t :+

bind -r H resize-pane -L 5          # Resize pane
bind -r J resize-pane -D 5          # Resize pane 
bind -r K resize-pane -U 5          # Resize pane
bind -r L resize-pane -R 5          # Resize pane

set -g mouse on
set -g default-terminal "screen-256color"  

# Colour Scheme
set -g status-style fg=white,bg=black
setw -g window-status-style fg=cyan,bg=black
setw -g window-status-current-style fg=white,bold,bg=red
setw -g pane-border-style fg=green,bg=black
setw -g pane-active-border-style fg=white,bg=yellow
setw -g window-style fg=colour240,bg=colour235
setw -g window-active-style fg=white,bg=black
set -g message-style fg=white,bold,bg=black

set -g status-justify centre

# Status line left side to show Session:window:pane
set -g status-left-length 40
set -g status-left "#[fg=green]Session: #S #[fg=yellow]#I #[fg=cyan]#P"

# enable activity alerts
setw -g monitor-activity on
set -g visual-activity on
