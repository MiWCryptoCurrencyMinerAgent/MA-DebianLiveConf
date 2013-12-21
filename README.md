MA-DebianLiveConf
=================

Debian Live Configuration Scripts and Resources for MinerAgent
By MiW
* Miners by Xolokram: https://github.com/thbaumbach/ XPM (PrimeCoin) PTS (ProtoShares)

This git repo contains a working configuration tree and auto files for the scripted generation of the MinerAgent ISO with Debian Live http://live.debian.net/ on sid.
This build is optimised for size. Including miners, this is approximately 110MB as an .iso

Further optimisations are planned to reduce this size further. Care must be taken while mindlessly deleting files in stripped.sh; you can break the build process. Rigourous testing will be required.

It will build an image that provides:
* python and perl for scripting
* required libraries for mining clients
* remote access via ssh
* fail2ban to detect authentication failures and block attackers
* screen/tmux for miner persistence

To install this debian-live toolkit, do:
apt-get install live-boot live-boot-doc live-boot-initramfs-tools live-build live-config live-config-doc live-config-sysvinit live-manual-html live-manual-txt live-tools

If you wish to compile the miners, you will need to clone the ptsminer and primeminer repos from https://github.com/thbaumbach/

Care should be taken with trusting miner binaries from unknown sources.
-----------------------------------------------------------------------
They could easily contain back doors or substitute payout addresses. This has occured In The Wild!


Additional binaries should be included in config/includes.chroot/usr/bin

To build
--------
clone repo, or us lb config --config https://github.com/MiWCryptoCurrencyMinerAgent/MA-DebianLiveConf/

to build, run: lb build

some time later you should have a binary called: live-image-amd64.hybrid.iso
