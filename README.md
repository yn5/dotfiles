# Dotfiles

For MacOS.

## Bootstrapping a new machine

1. Run `git` in a terminal window so MacOS will prompt with an option to install it.
2. Clone this repo into `~/.dotfiles`
3. Run the bootstrap script
   ```bash
   ~/.dotfiles/bootstrap.sh
   ```

## Troubleshooting

### Tmux colors
If the theme colors aren't applied after first running the bootstrap script you can try pressing `prefix` + I (capital i, as in Install) to fetch the plugin. Or try running the script in ` ~/.tmux/plugins/tpm/bin/install_plugins`.