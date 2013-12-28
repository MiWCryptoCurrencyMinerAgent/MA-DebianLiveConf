Readme.txt for MinerAgent 1.3
A small linux live system for mining CryptoCurrency
By MiW <MiWMiner4gent@outlook.com>
Based on Debian Live sid, with miners from xolokram and jh/tandyuk/PimenovAlexander 

Insert into computer, or connect .iso to remote access console. Boot from disk or iso.
Please change your password!

use primeminer, jhprimeminer, ptsminer or jhprotominer with your payout address or pool account

You can access your server with ssh and remotely execute the mining command.
Fail2ban will block any attempts to brute-force the ssh password.
All miner binaries are signed.

=Message of the Day=
==- Welcome to Miner Agent version 1.3 By MiW <MiWMiner4gent@outlook.com>=--
| PrimeMiner/PTSMiner by Xolokram: https://github.com/thbaumbach/ | OS by Debian Linux
| Live Build/Config tools by http://live.debian.net/ | jhPrimeminer and jhProtominer by jh et al
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
-------------------------------------------------------------------------------------------------------------------------------
XPM - Primecoin
beeeeer: primeminer -pooluser=<payout_address> -poolpassword=0 -poolip=176.34.128.129 -poolport=1337 -genproclimit=<num_cores>
rpool: primeminer -pooluser=<payout_address> -poolpassword=0 -poolip=rpool.net -poolport=8336 -genproclimit=<num_cores>
ypool: jhprimeminer -o http://ypool.net -u <yourusername>.<workername> -p <password>
--------------------------------------------------------------------------------------------------------------------------------
PTS - Protoshares
beeeeer: ptsminer *PAYOUT_ADDRESS* *NUMBER_OF_CORES* 27 avx
ypool: jhprotominer -o http://ypool.net -u <yourusername>.<workername> -p <password> -t <cores> -m512
--------------------------------------------------------------------------------------------------------------------------------
Or if you feel generous, mine for me :-)
"xpm-beeeeer.sh" or "xpm-rpool.sh" or "xpm-ypool.sh" or "pts-beeeeer.sh" or "pts-ypool.sh"
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

=Credits=
Debian Live project for livecd
SunnyKing for Primecoin
InvictusInnovations for Protoshares
Xolokram for xolominer ptsminer
{jh rdebourbon tandyuk} for jhprimeminer
splash based on "A miner. P V & K Coal Company, Clover Mine, Lejunior, Harlan County, Kentucky", ARC 541294

