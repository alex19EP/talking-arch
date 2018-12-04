TalkingArch
===========

TalkingArch is a project to create an ArchLinux install CD for blind and visually impaired users. It is as close to the official Arch Linux install CD as possible, adding speech output via the Speakup screen reader and braille output via brltty.
You can read about it on [this page](http://wiki.archlinux.org/index.php/TalkingArch) from the Arch Wiki.
You can download the image from the [TalkingArch](http://talkingarch.tk/) website.
If you just want a CD image, you can stop reading here!
The rest of this document is only useful for those who want to build their own images.

Getting Started
---------------

First, grab the talkingarch-git package from the AUR.  Build and install it.
TalkingArch is built using the archiso scripts.
So talkingarch-git depends on archiso-git.
You will find archiso-git in the AUR, as well.
You should update both packages regularly, to keep abreast of upstream changes.
I encourage you to read archiso's README before proceeding.  You can find that document at
/usr/share/doc/archiso/README.

From here on, I'm going to assume that you have root privileges.  You need them to build the images.  Fire up a root shell, using your preferred method.

The standard TalkingArch image contains brltty-minimal, a modified version of brltty with far fewer dependencies.
The package is downloaded from a custom repo.
The pacman.conf built into the TalkingArch configuration is already set up to download this package.
You will, however, need to add and trust the key used to sign the repository database and the brltty-minimal package, or else the build process will fail.
	pacman-key -r --keyserver pgp.mit.edu 75689861
	pacman-key --edit-key 75689861
Use the pacman-key --edit-key command above to edit the trust level for the key.
You can trust-sign the key using Pacman's master key, and your image will build correctly.
The TalkingArch configuration is found in /usr/share/talkingarch/configs/talking-inst.
You can build your image right in that directory, if you're so inclined.
But I'd copy it somewhere else, far away from /usr/share.
For this example, we're going to build in /root/tarch,
so execute the following:
	mkdir -p /root/tarch
	cp -dR /usr/share/talkingarch/configs/talking-inst /root/tarch
	cd /root/tarch/talking-inst
Now you can run ./build.sh.
Running ./build.sh with no arguments will automatically build a dual-architecture iso image.
	./build.sh -h
will list some extra options that are available.
Note that the generated image is suitable for either a CD or a USB stick.
Archiso now produces so-called hybrid ISOs.
It's as easy as that!

Cloning
-------

You'll get a clone of the TalkingArch project when you build the talkingarch-git package from AUR.
If you want to clone it manually, use the following:
	git clone https://notabug.org/talkingarch/talkingarch.git
Miscellaneous Notes
-------------------

The TalkingArch configuration is only a slight modification of the configs/releng tree from the archiso project.
Most of the modifications are confined to the overlay subdirectory.
A couple of packages were also added to the package lists.
The Makefile has also been modified to produce image files with "TalkingArch" in their names, and isolinux is configured to show the name TalkingArch.
Otherwise, the TalkingArch configuration makes every attempt to be as close to the official Arch install media as possible.

Thanks
------

All of the people who work on archiso have our heartfelt gratitude.
Thank you for making this process so easy.

Also, we appreciate the people who have used and tested TalkingArch, especially
those who sent useful comments and suggestions.

Feedback
--------

If you have questions or comments, feel free to send them to support [at] TalkingArch [dot] tk.
Also, feel free to drop into the #talkingarch channel on irc.talkabout.cf.
