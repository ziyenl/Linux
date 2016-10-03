# Shell Configuration Files (.bash_profile, .bashrc )
There is a differentiation of login shell vs. non-login shell since there is differentiation of which configuration files are applied to the shell.

- `etc/bashrc`: shell system wide function and alias, run different commands and variables
- `etc/profile`: calls bashrc file
- `home/user/.bash_logout`: user specific preferences when logging out. Only call when we are logging out of our user shell window.
- `home/user/.bash_profile`: user specific shell preferences
- `home/user/.bashrc`: non-login shell that store user specific functions and aliases

`Alt-F2 to F6` to move into a different login shell.

Order in which the configuration files are called:

1. bash profile
2. login
3. bashrc

`.bash_profile` calls `.bashrc` files.

Fedora based system uses .bash_login, .bash_login, .bash_profile and .bashrc

Suse uses .bashrc and .bash_profile configuration

