# This Makefile only installs the TalkingArch README and configuration.

install:
	install -d -m 644 $(DESTDIR)/usr/share/talkingarch/
	cp -r configs $(DESTDIR)/usr/share/talkingarch/configs
	install -D -m 644 README.md $(DESTDIR)/usr/share/doc/talkingarch/README	

