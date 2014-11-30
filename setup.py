#!/usr/bin/env python
"""
A script to setup .vimrc and .bash_aliases.
"""
import argparse
import os
import sys

def query_yes_no(question, default="yes"):
    """Ask a yes/no question via raw_input() and return their answer.

    "question" is a string that is presented to the user.
    "default" is the presumed answer if the user just hits <Enter>.
        It must be "yes" (the default), "no" or None (meaning
        an answer is required of the user).

    The "answer" return value is one of "yes" or "no".

    (Shamelessly stolen from stackoverflow: http://stackoverflow.com/questions/3041986/python-command-line-yes-no-input/3041990#3041990)
    """
    valid = {"yes":True,   "y":True,  "ye":True,
             "no":False,     "n":False}
    if default == None:
        prompt = " [y/n] "
    elif default == "yes":
        prompt = " [Y/n] "
    elif default == "no":
        prompt = " [y/N] "
    else:
        raise ValueError("invalid default answer: '%s'" % default)

    while True:
        print question + prompt
        choice = raw_input().lower()
        if default is not None and choice == '':
            return valid[default]
        elif choice in valid:
            return valid[choice]
        else:
            print "Please respond with 'yes' or 'no' (or 'y' or 'n')"

parser = argparse.ArgumentParser(description="""A script to setup dotfiles. This simply creates a symbolic link from the vimrc in the Basic subdirectory to the home directory. In the future I'll be adding options to create more complex vimrcs.""")
parser.parse_args()

# Create symbolic link for the vimrc file
target = "./Vim/vimrc"
target = os.path.abspath(target)
home = os.path.expanduser("~")
if os.path.exists('%s/.vimrc' % home):
    if query_yes_no("You already have a .vimrc file in %s, do you want to delete it and set the symbolic link?" % home):
        os.remove('%s/.vimrc' % home)
        os.symlink(target, '%s/.vimrc' % home)
        print "symlink created"
    else:
        print "symlink not created"
else:
	os.symlink(target, '%s/.vimrc' % home)
   	print "symlink created"

# Create symbolic link for the bash_aliases file
target = "./Bash/bash_aliases"
target = os.path.abspath(target)
home = os.path.expanduser("~")
if os.path.exists('%s/.bash_aliases' % home):
    if query_yes_no("You already have a .bash_aliases file in %s, do you want to delete it and set the symbolic link?" % home):
        os.remove('%s/.bash_aliases' % home)
        os.symlink(target, '%s/.bash_aliases' % home)
        print "symlink created"
    else:
        print "symlink not created"
else:
	os.symlink(target, '%s/.bash_aliases' % home)
   	print "symlink created"

# Create symbolic link for the gitconfig file
target = "./Git/gitconfig"
target = os.path.abspath(target)
home = os.path.expanduser("~")
if os.path.exists('%s/.gitconfig' % home):
    if query_yes_no("You already have a .gitconfig file in %s, do you want to delete it and set the symbolic link?" % home):
        os.remove('%s/.gitconfig' % home)
        os.symlink(target, '%s/.gitconfig' % home)
        print "symlink created"
    else:
        print "symlink not created"
else:
	os.symlink(target, '%s/.gitconfig' % home)
   	print "symlink created"

# Create symbolic link for the tmux.conf file
target = "./Tmux/tmux.conf"
target = os.path.abspath(target)
home = os.path.expanduser("~")
if os.path.exists('%s/.tmux.conf' % home):
    if query_yes_no("You already have a .tmux.conf file in %s, do you want to delete it and set the symbolic link?" % home):
        os.remove('%s/.tmux.conf' % home)
        os.symlink(target, '%s/.tmux.conf' % home)
        print "symlink created"
    else:
        print "symlink not created"
else:
	os.symlink(target, '%s/.tmux.conf' % home)
   	print "symlink created"
