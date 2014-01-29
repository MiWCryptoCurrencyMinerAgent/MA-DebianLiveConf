# PRIMEWATCH
###### *A bash script designed to look after Xolo's Primeminer launched against beeeeer.org pool* 

## Why? For what?

When I have started mining primecoins on my PC, occasionally two thing were happening: miner hangs during nighttime hours and (much much rarer) miner crashes. Well, there are better things to do at night than watching miner output, so I have searched the net and surprisingly didn't found any useful solution. So here it is, not a cutting edge programming but address three things:
* Is Internet connection working at all? Script periodically pings Google DNS and if errors are returned pings four more servers and checks connection carrier, then writes info to logfile if less than half of packets is received.
* Is miner running at all? If not, launch again.
* Did miner hang somewhere at connection after all? I had hangs lasting an hour or two with lots of `force reconnect if possible!` or `system:111` communicates (on my box usually one of them was clearly dominating, not both at the same time), without any `[MASTER]` line printed to output. Script simply compares line numbers of last `force reconnect if possible!` and `system:111` communicates with line number of last `[MASTER]` communicate. If `[MASTER]` is not the last one, primeminer is killed, launched against another server and info is written to logs.

## Quick how-to
* I'm assuming you have primeminer binary and basic Linux skills. If not, google it, check peercointalk.org forum, etc.
* Get primewatch script, either copy-paste from this site or use `git clone https://github.com/arkhebuz/primewatch` command. Use `chmod +x primewatch.sh` when necessary.
* **Edit** primewatch.sh file, all this is commented in code. You need to:
  1. Change catalog where logs will be stored;
  2. Set your network interface virtual filesystem catalog (like `/sys/class/net/eth0`);
  3. Set interval in seconds between checks. Should be large enough to let the miner recover under its own steam in most cases. Also, too small will make script steal cpu cycles from miner;
  4. Set primeminer binary location;
  5. Edit primeminer launch parameters. This script is written with beeeeer.org pool in mind, refer to [http://www.peercointalk.org/index.php?topic=485.msg3304#msg3304](http://www.peercointalk.org/index.php?topic=485.msg3304#msg3304) and my comments in code;
* Launch script, pass to it which beeeeer.org server and port it should use, like `./primewatch.sh us 8080`. You can just leave the terminal on, or use `screen`, or put script in autostart, or do something else. I prefer the second option.

## Quirks
* Every primeminer run has it's own logfile with it's output, named with launch time (YYYY-MM-DD_hh.mm.ss). Additionaly there's a `netlog` file, where only communicates from script about connection are stored.
* Script should be able to change server if miner can't connect at all to it, I hope.
* Use [Kangaroo AP-US](https://github.com/arkhebuz/primewatch/tree/kangaroo_ap-us) branch if you live in Asia-Pacific region to get little better latencies with AP server instead of EU.
* Dependencies? Primeminer, pkill, pgrep, bash, grep, sed, ping... Nothing special.
* Aha, works for me. May not work for you. Tested on Debian Stable.
* Donate? Just a tip maybe?  
   XPM: AV3w57CVmRdEA22qNiY5JFDx1J5wVUciBY  
   DTC: DMy7cMjzWycNUB4FWz2YJEmh8EET2XDvqz
* Check out [fork for Datacoin mining](https://github.com/arkhebuz/datawatch)!
