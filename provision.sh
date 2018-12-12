#!/bin/bash -i

# The following are documented (and stolen from) here:
#   http://redsymbol.net/articles/unofficial-bash-strict-mode/
#
# In case that link dies, here's the simple version:
# 1) -e means if there's an error, stop execution.
# 2) -u means if we reference an undefined variable, blow up.
# 3) -o pipefail means that if a step in a pipe fails, the whole pipe fails, which in combination with 1) means
#    that the script as a whole fails.


echo "anan"
set -euo pipefail
sudo apt-get update
sudo apt-get -y install python3-pip
sudo pip3 install jupyter pandas sklearn seaborn matplotlib
echo Gerekli dependencyler yuklendi..

