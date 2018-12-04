# This Makefile only installs the TalkingArch README and configuration.
SOUNDS_DIR=/usr/share/talkingarch/configs/talking-inst/airootfs/usr/share/livecd-sound/sounds
all: pick-a-card.wav beep.wav

pick-a-card.wav:
	opusdec pick-a-card.opus pick-a-card.wav

beep.wav:
	sox -n beep.wav synth 1 sin 440

install: all
	install -d -m 644 $(DESTDIR)/usr/share/talkingarch/
	cp -r configs $(DESTDIR)/usr/share/talkingarch/configs
	install -D -m 644 README.md $(DESTDIR)/usr/share/doc/talkingarch/README
	install -Dm644 pick-a-card.wav $(DESTDIR)$(SOUNDS_DIR)/pick-a-card.wav
	install -Dm644 beep.wav $(DESTDIR)$(SOUNDS_DIR)/beep.wav
