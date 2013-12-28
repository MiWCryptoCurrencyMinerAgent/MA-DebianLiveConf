#!/bin/sh
echo Importing MinerAgent public key into GPG keyring
su user -c "gpg --import /usr/share/keyrings/mineragent.asc"
su user -c "echo 858647D92F915358EA76DE133921634ABF8A2DC7:6: | gpg --import-ownertrust"
