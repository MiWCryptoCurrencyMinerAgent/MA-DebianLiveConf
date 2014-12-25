Readme.txt for MinerAgent 1.5
A small linux live system for mining CryptoCurrency
Primecoin Bitshares-PTS Momemtum Quark Riecoin X11 Metiscoin Bytecoin Monero 
By MiW <MiWMiner4gent@outlook.com>
Based on Debian Live sid, with miners from lots of cool folks!

=tldr;=
Insert into optical drive, or connect .iso to remote access console. Boot from disk or iso.
Please change your password! Execute miner binary. Profit!

=What?=
MinerAgent is a small [~100MB] (Linux) Debian Live iso, preconfigured for CPU Mining Crytocurrency
(Primecoin Bitshares-PTS Quark Datacoin SHA256D Bitcoin Namecoin Peercoin SCRYPT Litecoin Dogecoin Worldcoin Megacoin)
it comes with all needed libraries, sshd, perl, python, fail2ban, htop, screen & tmux
It includes many miner binaries; Compiled from latest public source and signed.
It uses Debian sid; snapshot from when this image was created.
It has been tested on Oracle VirtualBox and VMWare Player and a range of other desktop, laptop and server devices.
If you have compatibility issues with your hardware, please contact me and provide a screenshot or log dump so I can fix.

=Miners!=
xolokrams primeminer ptsminer
jh000 jhprimeminer/jhprotominer
Aerocloud jhprimeminer
uncle-bob minerd
dga for fastrie 
LucasJones and wolf9466 cpuminer-multi
ig0tik3d for cpu-jackpotcoin

=How to mine=
To Mine use the appropraite miner
XPM Primecoin DTC:
primeminer, jhprimeminer, jhprimeminer-aero
RIC:
xptminer
QRK:
minerd-unclebob
CryptoNight (Bytecoin BCN, Monero XMR), X11:
cpuminer-multi
No AES: cpuminer-LJ-multi
SCrypt (LTC DOGE WDC MEC FTC etc) SHA256D (BTC PPC TRC ZTC FRC):
minerd-unclebob cpuminer-multi

=Accessing your MinerAgent=
You can access your server with ssh and remotely execute the mining command.
Fail2ban will block any attempts to brute-force the ssh password.
All miner binaries are signed.
Change your password!


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


=Changelog=
* moved to changelog.txt

=Credits=
Debian Live project for livecd http://www.debian.org
coblee for Litecoin | SunnyKing for Primecoin | InvictusInnovations for Protoshares  
Oocook for Datacoin | Max Guevara for Quark | Jackson Palmer for Dogecoin
Pooler for cpuminer - the godfather of cpu-based cryptocurrency mining
Xolokram for xolominer ptsminer  https://github.com/thbaumbach/
{jh rdebourbon tandyuk} for jhprimeminer https://github.com/tandyuk
Aero for jhprimeminer-aero and clintar for the linux port https://github.com/clintar/jhPrimeminer-Aero/
Uncle-bob, Neisklar, pooler for minerd and quark-minerd https://github.com/uncle-bob/quarkcoin-cpuminer
RminerD for Riecoin by Gatra https://github.com/gatra/cpuminer-rminerd
dga for fastrie | https://github.com/dave-andersen/fastrie
Wolf9466 and LucasJones for cpuminer-multi https://github.com/wolf9466/cpuminer-multi https://github.com/LucasJones/cpuminer-multi
ig0tik3d for cpu-jackpotcoin https://github.com/ig0tik3d/cpu-jackpotcoin


primewatch.sh by arkhebuz https://github.com/arkhebuz/primewatch
splash based on "A miner. P V & K Coal Company, Clover Mine, Lejunior, Harlan County, Kentucky", ARC 541294
