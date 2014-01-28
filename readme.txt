Readme.txt for MinerAgent 1.4.1
A small linux live system for mining CryptoCurrency
Primecoin Protoshares Datacoin Quark [SCrypt & SHA256D]
By MiW <MiWMiner4gent@outlook.com>
Based on Debian Live sid, with miners from xolokram/jh/tandyuk/PimenovAlexander/Aero/clintar/pooler/uncle-bob

=tldr;=
Insert into optical drive, or connect .iso to remote access console. Boot from disk or iso.
Please change your password! Execute miner binary. Profit!

=What?=
MinerAgent is a small [~100MB] (Linux) Debian Live iso, preconfigured for CPU Mining Crytocurrency
(Primecoin Protoshares Quark Datacoin SHA256D Bitcoin Namecoin Peercoin SCRYPT Litecoin Dogecoin Worldcoin Megacoin)
it comes with all needed libraries, sshd, perl, python, fail2ban, htop, screen & tmux
It includes xolokrams primeminer/ptsminer & jh000 jhprimeminer/jhprotominer & clintars jhprimeminer-aero & uncle-bob minerd
It uses Debian sid (Linux 3.12; libboost-1.54; openssl-1.0.1f; libgmp-5.1.3; libdb-6.0; libc-2.17)

It has been tested on Oracle VirtualBox and VMWare Player and a range of other desktop, laptop and server devices.
If you have compatibility issues with your hardware, please contact me and provide a screenshot or log dump so I can fix.

=How to mine=
To Mine use the appropraite miner
XPM DTC:
primeminer, jhprimeminer, jhprimeminer-aero
PTS:
ptsminer, jhprotominer
QRK:
minerd-unclebob
SCrypt (LTC DOGE WDC MEC FTC etc):
minerd-unclebob
SHA256D (BTC PPC TRC ZTC FRC):
minerd-unclebob

=Accessing your MinerAgent=
You can access your server with ssh and remotely execute the mining command.
Fail2ban will block any attempts to brute-force the ssh password.
All miner binaries are signed.
Change your password!

=Whats new in 1.4.1?=
* New Features! (Now supports CPU mining many cryptocurrencies)
Uncle-bob minerd for quark (+scrypt + sha256)

=DCHP Autoconfiguration=
MinerAgent will request the vendor id "MinerAgent" (DHCP Code 60) from DCHP when requesting a lease.
You can supply three parameters to the the system as a DHCP Vendor Scope option. 
Sample ISC DHCP configuration:
option MinerAgent.miner-binary code 1 = string;
option MinerAgent.miner-options code 2 = string;
option MinerAgent.automine-enabled code 3 = string;
In Microsoft DHCP Server you can 'define a Vendor Class' of MinerAgent with ID MinerAgent.
Once defined, set 'Predefined Options and Values'; Options class MinerAgent and add the three options above
value examples for primecoin: 001 miner-binary = primeminer; 002 miner-options = -pooluser=abc -poolip=X.X.X.X; 003 automine-enabled = 1;
value examples for dogecoin: 001 miner-binary = minerd-unclebob; 002 = miner-options = -algo scrypt -o stratum+tcp://stratum6.dogehouse.org:993 -u username.worker -p password x; automine-enabled = 1;

=Message of the Day=
==- Welcome to Miner Agent version 1.4.1 By MiW <MiWMiner4gent@outlook.com>=--
| Miners and work contributed by xolokram, jh, tandyuk, clintar, pooler, uncle-bob, et al | OS by Debian Linux
| Live Build/Config tools by http://live.debian.net/ | Please mine responsibly.
# Now with DHCP Automining support. Configure with vendor "MinerAgent" in DHCP to pull miner command line
[!] 1. Pls change password with 'passwd'. Default pwd: "mineallthecoins".
[¥] 2. Your account, user, has sudo rights; you can execute as root with "sudo"
[®] 3. IP: you can find the ip of the host with "sudo ifconfig"
[ß] 4. System has a randomly generated hostname. It will show in DHCP logs. :-)
[§] 5. System running openssh. pls login remotely with ssh user@IPaddr
[œ] 6. System running fail2ban. this *should* protect you from ssh worms on internets.
[Ž] 7. You can verify the signature on the miner binaries, integrity of the miners (have not been modified) with "verify-miners"
[½] 8. To 'daemonize' the mining client (run in background, survive loss of ssh connection), use "screen" or "tmux" from ssh.
[¾] 9. To check on performance, use "top" or "htop"
10. Mine!:
-[XPM PrimeCoin]-[PTS ProtoShares]-[DTC Datacoin]-[QRK Quark]-[SCRYPT]-[SHA256D]--------------------------------------------------
XPM beeeeer: primeminer -pooluser=$PAYOUT -poolpassword=0 -poolip=176.34.128.129 -poolport=1337 -genproclimit=#cores
XPM rpool: primeminer -pooluser=$PAYOUT -poolpassword=0 -poolip=rpool.net -poolport=8336 -genproclimit=#cores
XPM ypool: jhprimeminer -o http://ypool.net -u <yourusername>.<workername> -p <password>
PTS beeeeer: ptsminer $PAYOUT #cores 27 avx
PTS ypool: jhprotominer -o http://ypool.net -u <yourusername>.<workername> -p <password> -t #cores -m512
DTC gpool:  primeminer -pooluser=$PAYOUT -poolpassword=0 -poolip=162.243.41.59 -poolport=8336 -poolshare=6 -genproclimit=#cores
DTC xrampool: primeminer -poolip=xpool.xram.co -poolport=1339 -pooluser=$PAYOUT -genproclimit=#cores -poolshare=6
QRK mine-pool: minerd-unclebob -a quark -t #cores -o http://qrk.mine-pool:8372 -u $PAYOUT -p xxx
QRK coinmine.pl minerd-unclebob -a quark -o stratum+tcp://mine1.coinmine.pl:6010 -u username -p x
other SCrypt (ie: DOGE): minerd-unclebob -a scrypt -o $POOLURL -u Worker -p x
other SHA256D (ie: BTC): minerd-unclebob -a sha256d -o $POOLURL -u Worker -p x
--------------------------------------------------------------------------------------------------------------------------------
Or if you feel generous, mine for me :-)
"xpm-beeeeer.sh" or "xpm-rpool.sh" or "xpm-ypool.sh" or "pts-beeeeer.sh" or "pts-ypool.sh" or "dtc-xrampool.sh" or "dtc-gpool.sh"
or "qrk-minepool.sh" or "xxx-multipoolscrypt.sh" or "xxx-multipoolsha256d.sh"
11. ???
12. Profit! (have fun!)


=Changelog=
1.0 Internal Test
* includes xolokram primecoin miner 0.7
1.1 Internal Release
* includes xolokram primecoin miner 0.8
1.2 Public Release
* includes xolokram miner XPM:0.8 PTS:0.7 RC2
* linux-3.11-2 openssl-1.0.1e openssh-6.4p1 libboost-1.54 db-6.0 htop-1.0.2 fail2ban-0.8.11
1.3 Public Release
* added verify-miner and public key. updated sigs
* includes jhPrimeMiner tandyuk 3.3beta
* includes jhProtoMiner PimenovAlexander linux-port 0.1a
* linux-3.12
1.4 Public Release
* includes datacoin mining examples and scripts
* includes jhPrimeminer-Aero V16.5 by clintar
* includes DHCP autoconfiguration
* added vmwgfx.enable_fbdev=1 to kernel params to fix vmware no console bug in linux >3.9
1.4.1 Update Release
* includes UncleBob minerd for QRK quark mining
* minerd for generic scrypt cpu mining... (LTC DOGE etc)
* fixed bug where / and : are needed chars in dhcp autoconf
* added 2 second time delay to supervisor generate for vmware timing issue

=Credits=
Debian Live project for livecd http://www.debian.org
coblee for Litecoin | SunnyKing for Primecoin | InvictusInnovations for Protoshares  
Oocook for Datacoin | Max Guevara for Quark | Jackson Palmer for Dogecoin
Xolokram for xolominer ptsminer  https://github.com/thbaumbach/
{jh rdebourbon tandyuk} for jhprimeminer https://github.com/tandyuk
Aero for jhprimeminer-aero and clintar for the linux port https://github.com/clintar/jhPrimeminer-Aero/
Uncle-bob, Neisklar, pooler for minerd and quark-minerd https://github.com/uncle-bob/quarkcoin-cpuminer
splash based on "A miner. P V & K Coal Company, Clover Mine, Lejunior, Harlan County, Kentucky", ARC 541294
