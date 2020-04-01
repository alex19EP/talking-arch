# TalkingArch

TalkingArch is a project to create an ArchLinux install CD for blind and visually impaired users. It is as close to the official Arch Linux install CD as possible, adding speech output via the Speakup screen reader and braille output via brltty.
You can read about it on [this page](http://wiki.archlinux.org/index.php/TalkingArch) from the Arch Wiki.
You can download the image from the [release page](https://github.com/alex19EP/talking-arch/releases).
If you just want a CD image, you can stop reading here!
The rest of this document is only useful for those who want to build their own images.

## Getting Started

TalkingArch is built using the archiso scripts. So install archiso-git from AUR.

I encourage you to read archiso's README before proceeding.  You can find that document at
/usr/share/doc/archiso/README.

From here on, I'm going to assume that you have root privileges.  You need them to build the images.  Fire up a root shell, using your preferred method.

For this example, we're going to build in /root/tarch,
so execute the following:

~~~
	git clone https://github.com/alex19EP/talking-arch.git
	cd talking-arch/configs/releng/
~~~

Now you can run ./build.sh.

~~~
	./build.sh -h
~~~

will list some extra options that are available.
Note that the generated image is suitable for either a CD or a USB stick.
Archiso now produces so-called hybrid ISOs.
It's as easy as that!

## Miscellaneous Notes

The TalkingArch configuration is only a slight modification of the configs/releng tree from the archiso project.
Most of the modifications are confined to the overlay subdirectory.
A couple of packages were also added to the package lists.
The Makefile has also been modified to produce image files with "TalkingArch" in their names, and isolinux is configured to show the name TalkingArch.
Otherwise, the TalkingArch configuration makes every attempt to be as close to the official Arch install media as possible.

## Thanks

All of the people who work on archiso have our heartfelt gratitude.
Thank you for making this process so easy.

Also, we appreciate the people who have used and tested TalkingArch, especially
those who sent useful comments and suggestions.
