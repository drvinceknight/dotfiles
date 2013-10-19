#!/usr/bin/env python
"""
A script to setup .vimrc.
"""
import os
import argparse

parser = argparse.ArgumentParser(description='A script to setup dotfiles.')

# Create symbolic link for the vimrc file
target = "./Basic/.vimrc"
target = os.path.abspath(target)
home = os.path.expanduser("~")
print home
os.symlink(target, '%s/.vimrc' % home)
print "symlink created"
