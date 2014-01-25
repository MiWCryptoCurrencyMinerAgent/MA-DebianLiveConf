#!/bin/sh
# Do this for both user and root. root must verify binaries.
# must create folder or else homedir fails, yet also creates this dir afterward...
echo Importing MinerAgent public key into GPG keyring
set GPGHOME="/root/.gnupg"
gpg --homedir /root/.gnupg --import /usr/share/keyrings/mineragent.asc 
echo 858647D92F915358EA76DE133921634ABF8A2DC7:6: | gpg --import-ownertrust --homedir /root/.gnupg 

su user -c "gpg --import /usr/share/keyrings/mineragent.asc"
su user -c "echo 858647D92F915358EA76DE133921634ABF8A2DC7:6: | gpg --import-ownertrust"

