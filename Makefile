tmux:
	cat tmux.1.9.conf.template > tmux.1.9.conf
	cat common.tmux.conf >> tmux.1.9.conf
	cat tmux.2.2.conf.template > tmux.2.2.conf
	cat common.tmux.conf >> tmux.2.2.conf
