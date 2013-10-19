#!/usr/bin/env python
"""
A script to setup .vimrc.
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
target = "./Basic/.vimrc"
target = os.path.abspath(target)
home = os.path.expanduser("~")
if os.path.exists('%s/.vimrc' % home):
    if query_yes_no("You already have a .vimrc file in %s, do you want to delete it and set the symbolic link?" % home):
        os.remove('%s/.vimrc' % home)
        os.symlink(target, '%s/.vimrc' % home)
        print "symlink created"
    else:
        print "symlink not created"
