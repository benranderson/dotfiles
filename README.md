# dotfiles

## Instructions

Make set up file executable:

```bash
chmod 755 makesymlinks.sh
```

Then run:

```bash
./makesymlinks.sh
```

## Files

### zshenv

This file is sourced by all instances of Zsh, and thus, it should be kept as
small as possible and should only define environment variables.

### zprofile

This file is similar to _zlogin_, but it is sourced before _zshrc_. It was added
for KornShell fans. See the description of _zlogin_ below for what it may
contain.

_zprofile_ and _zlogin_ are not meant to be used together but can be done so.

### zshrc

This file is sourced by interactive shells. It should define aliases, functions,
shell options, and key bindings.

### zpreztorc

This file configures Prezto.

### zlogin

This file is sourced by login shells after _zshrc_. Thus, it should contain
commands that need to execute at login. It is usually used for messages such as
[_`fortune`_][3], [_`msgs`_][4], or for the creation of files.

This is not the file to define aliases, functions, shell options, and key
bindings. It should not change the shell environment.

### zlogout

This file is sourced by login shells during logout. It should be used for
displaying messages and for deletion of files.
