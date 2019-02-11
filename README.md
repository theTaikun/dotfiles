# theTaikun's dotfiles
## My personal dotfile configurations for my home Linux PCs

Use [Stow](https://www.gnu.org/software/stow/) to install the dotfiles:
```shell
stow -t ~/ vim
stow -t ~/ stow
```
Each folder installs all (and only) the necessary files.

For instance, both `./zsh/bin/` and `./vim/bin` will write to ~/bin.
However, if you only want to use my vim configuration, then only `./vim/bin` will be used.
If both `./zsh/bin/` and `./vim/bin` are installed, Stow will handle the merger into `~/bin`.
Stow will prevent any collissions from occuring.

To use Stow, first delete any existing files.


WIP done on `development` branch.

Working configs merged to master.

Per-system changes are local branches and rebased on master.
Local branches not uploaded to github.

## Submodules
### Vim
My vim plugins are installed in the vim directory via submodules.

Make sure to pull and update them
