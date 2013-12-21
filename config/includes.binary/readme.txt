-== Welcome to Miner Agent version 1.2 By MiW <MiWMiner4gent@outlook.com> ==-
Miners by Xolokram: https://github.com/thbaumbach/ PTS XPM; OS Debian Live sid
1. Pls change password with 'passwd'. Default pwd: "mineallthecoins".
2. Your account, user, has sudo rights; you can execute as root with "sudo"
3. IP: you can find the ip of the host with "sudo ifconfig"
4. System has a randomly generated hostname. It will show in DHCP logs. :-)
5. System running openssh. pls login remotely with ssh user@IPaddr
6. System running fail2ban. this *should* protect you from ssh worms on internets.
7. To 'daemonize' the mining client (run in background, survive loss of ssh connection), use "screen" or "tmux" from ssh. 
8. To check on performance, use "top" or "htop"
9. Mine:
XPM beeeeer:
primeminer -pooluser=*PAYOUT_ADDRESS* -poolpassword=0 -poolip=176.34.128.129 -poolport=1337 -genproclimit=*NUMBER_OF_CORES*
XPM rpool:
primeminer -pooluser=*PAYOUT_ADDRESS* -poolpassword=0 -poolip=rpool.net -poolport=8336 -genproclimit=*NUMBER_OF_CORES*
PTS beeeeer:
ptsminer *PAYOUT_ADDRESS* *NUMBER_OF_CORES* 27 avx
or mine for me :-)
"xpm-beeeeer.sh" or "xpm-rpool.sh" or "pts-beeeeer.sh" 
10. ???
11. Profit! (have fun!)

