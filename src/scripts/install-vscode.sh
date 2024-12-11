#!/bin/bash
sudo snap install --classic code

# Install vscode extensions for IntelliCode, C++, Python and P4
code --install-extension VisualStudioExptTeam.vscodeintellicode
code --install-extension ms-vscode.cpptools
code --install-extension ms-vscode.cmake-tools
code --install-extension ZhanghanWang.p4-lang
code --install-extension ms-python.python
code --install-extension ms-python.vscode-pylance

mkdir -p /home/vagrant/Desktop
cp /snap/code/current/meta/gui/code.desktop /home/vagrant/Desktop/code.desktop
