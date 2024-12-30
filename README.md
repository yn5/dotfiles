# Dotfiles

For MacOS.

## Bootstrapping a new machine

1. Clone this repo into `~/.dotfiles`
2. Install all dependencies
3. Symlink all files ending on `.symlink`

   ### Git

   ```bash
   ln -s ~/.dotfiles/git/config.symlink ~/.config/git/config
   ```

   ```bash
   ln -s ~/.dotfiles/git/ignore.symlink ~/.config/git/ignore
   ```

   ### neovim

   ```bash
   ln -s ~/.dotfiles/nvim/init.vim.symlink ~/.config/nvim/init.vim
   ```

   ### Tmux

   ```bash
   ln -s ~/.dotfiles/tmux/tmux.config.symlink ~/.config/tmux/tmux.conf
   ```

   ### Visual Studio Code

   ```bash
   ln -s ~/.dotfiles/vscode/settings.json.symlink ~/Library/Application\ Support/Code/User/settings.json
   ```

   ```bash
   ln -s ~/.dotfiles/vscode/keybindings.json.symlink ~/Library/Application\ Support/Code/User/keybindings.json

   ```

   ## Zsh

   ```bash
   ln -s ~/.dotfiles/zsh/zshrc.symlink ~/.zshrc
   ```

4. Install plugins in neovim

   Open `neovim` and run `:PlugInstall`. (Needs to have `node` and `npm` installed on the machine for `coc.nvim` installation.)

### Neovim setup

## Dependencies

- [Homebrew](https://brew.sh/)
- [node (with `nvm`)](https://github.com/nvm-sh/nvm)
- [git](https://git-scm.com/)
- [neovim](https://neovim.io/)
- [tmux](https://github.com/tmux/tmux)
- [Zsh](https://www.zsh.org/)
- [Oh My Zsh](https://ohmyz.sh/)
- [Visual Studio code](https://code.visualstudio.com/)
