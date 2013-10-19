#!/usr/bin/env python
"""
A script to setup .vimrc.
"""
import os
import argparse



parser = argparse.ArgumentParser(description="""A script to setup dotfiles. This simply creates a symbolic link from the vimrc in the Basic subdirectory to the home directory. In the future I'll be adding options to create more complex vimrcs.""")
parser.parse_args()

# Create symbolic link for the vimrc file
if os
target = "./Basic/.vimrc"
target = os.path.abspath(target)
home = os.path.expanduser("~")
if os.path.exists('%s/.vimrc' % home)
os.symlink(target, '%s/.vimrc' % home)
print "symlink created"
