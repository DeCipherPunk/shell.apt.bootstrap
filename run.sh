#!/bin/sh
echo "Downloading required scripts"
git clone https://github.com/DeCipherPunk/shell.apt.update.git ~/bootstrap/shell.apt.update
git clone https://github.com/DeCipherPunk/shell.apt.upgrade.git ~/bootstrap/shell.apt.upgrade
git clone https://github.com/DeCipherPunk/shell.apt.dependencies.git ~/bootstrap/shell.apt.dependencies
echo "Making scripts executable"
sudo chmod +x ~/bootstrap/shell.apt.update/run.sh
sudo chmod +x ~/bootstrap/shell.apt.upgrade/run.sh
sudo chmod +x ~/bootstrap/shell.apt.dependencies/run.sh
echo "Run Apt Update"
./bootstrap/shell.apt.update/run.sh
echo "Run Apt Upgrade"
./bootstrap/shell.apt.upgrade/run.sh
echo "Installing Dependecies"
./bootstrap/shell.apt.dependencies/run.sh

# Config Books after this
echo "Bootstrap Completed successfully"