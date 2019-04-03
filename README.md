# theTaikun's dotfiles
## My personal dotfile configurations for my home Linux PCs

## Installation
There are several ways to install these dotfiles:
1. Use [Stow](https://www.gnu.org/software/stow/).
```shell
stow -t ~/ vim
stow -t ~/ zsh
stow -t ~/ fluxbox
```
Each folder installs all (and only) the necessary files.

For instance, both `./zsh/bin/` and `./vim/bin/` will write to `~/bin/`.
However, if you only want to use my vim configuration, then only `./vim/bin/` will be used.
If both `./zsh/bin/` and `./vim/bin/` are installed, Stow will handle the merger into `~/bin/`.
Stow will prevent any collission of files from occuring.

To use Stow, first delete any of your existing files that you intend to replace with mine.
Stow will warn of collisions if this is not done.

2. Make your own symlinks by hand.
3. Go into each folder of this repo, and copy/paste the contents to your `$HOME` folder.
  * I don't recommend this method, as it's tedious, and if there are updates, you can't do a simple git pull and update all the files. You would have to manually copy them again.
  * If you really don't want to install Stow, do number 2 instead.

## Window Managers
I mainly use *Fluxbox* but have been test driving i3, more specifically *i3-gaps*.
That's why you'll see both a Fluxbox and i3 folder.
However, make sure to only install one of these at a time,
as they will both try to write different .xinitrc files

# Workflow

WIP done on `development` branch.

Working configs merged to master.

Per-system changes are local branches and rebased on master.
Local branches not uploaded to github.

## Submodules
Make sure to pull and update them

### Vim
My vim plugins are installed in the vim directory via submodules.
