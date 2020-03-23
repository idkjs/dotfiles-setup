# Dotfiles

Ripped off from <https://github.com/peterpme/dotfiles>. Basically took out the stuff I dont use or dont understand.

## NPM

After running the [first_time_setup.sh](./first_time_setup.sh) script running npm doesnt work until you add [`eval "$(fnm env --multi)"`](https://github.com/Schniz/fnm#manually) to your `~/.zshrc` file. Then reload/restart your terminal or run `source ~/.zshrc`. You can then run `npm -v` and get some output. I guess this should be setup in the script somewhere -> TODO.

## Aliases

Adding new aliases doesnt register them for some reason....