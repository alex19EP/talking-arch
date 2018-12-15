setopt singlelinezle
	flock -n /run/talk-to-me.lck talk-to-me
~/.automated_script.sh
