if [ -n "$(grep -oP 'speakup.synth=\K\S+' /proc/cmdline)" ]
then
    setopt singlelinezle
    flock -n /run/talk-to-me.lck talk-to-me
fi
~/.automated_script.sh
