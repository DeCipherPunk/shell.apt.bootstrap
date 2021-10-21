#!/bin/sh
echo "Downloading required scripts"
git clone https://github.com/DeCipherPunk/shell.apt.update.git /opt/bootstrap/shell.apt.update
git clone https://github.com/DeCipherPunk/shell.apt.upgrade.git /opt/bootstrap/shell.apt.upgrade
git clone https://github.com/DeCipherPunk/shell.apt.dependecies.git /opt/bootstrap/shell.apt.dependencies
echo "Making scripts executable"
sudo chmod +x /opt/bootstrap/shell.apt.update/run.sh
sudo chmod +x /opt/bootstrap/shell.apt.upgrade/run.sh
sudo chmod +x /opt/bootstrap/shell.apt.dependencies/run.sh
echo "Run Apt Update"
/opt/bootstrap/shell.apt.update/run.sh
echo "Run Apt Upgrade"
/opt/bootstrap/shell.apt.upgrade/run.sh
echo "Installing Dependecies"
/opt/bootstrap/shell.apt.dependencies/run.sh

# Config Books after this
echo "Bootstrap Completed successfully"