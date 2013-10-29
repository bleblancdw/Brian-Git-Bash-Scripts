I created these scripts because I wanted to make my bash prompt more functional.  You can use these scripts
to make yours look like this:

![image](http://i.imgur.com/k3X2OrX.png")

[Higher resolution image](http://i.imgur.com/k3X2OrX.png")

There are some other goodies that aren't in the above screenshot when the status
of your repository changes.

Instructions:

1.  Create a directory in your home directory called 'bash_scripts'
2.  Clone the contents of this repository into ~/bash_scripts
3.  Edit ~/.bash_profile to source all the files in the repository:
	i.e. source ~/bash_scripts/git_colors.sh
4.  Profit

Future enhancements:

1.  Display the number of commits you are ahead or behind
2.  Collapse the directories if the path gets too long

Notes:

I'm using this on OS X and Linux.  I haven't tested it on Windows.  I know
that I have to update the git character when I go between Slackware and
OS X.  I haven't had time to research this issue for a root cause and resolution.
Also, this was pieced together from some other people's code.  It's definitely not original.