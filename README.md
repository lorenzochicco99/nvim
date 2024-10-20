# nvimconfig
This is my personal neovim configuration based on ThePrimeagen's video https://youtu.be/w7i4amO_zaE?si=MmjuNG6dObuE-CWc tutorial on neovim configuration.

It features harpoon, telesscope, mason lsp, fuzzy finder, & more (link everything later).

## Overview


## Setup
Assume debian based distro ie ubuntu
sudo apt-get neovim
cd 
cd .config/
mkdir nvim/
cd nvim
git clone repo
nvim .

:PackerSync? does it work?
maybe navigate to packer.lua, n-mode :so 
:PackerSync
:q
nvim .

Mason should not be needed to install lsps

If work with python, create lspvenv, if not remove from the required lsps text the one that points at python?
