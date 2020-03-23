# Dotfiles

Ripped off from <https://github.com/peterpme/dotfiles>. Basically took out the stuff I dont use or dont understand.

## NPM

After running the [first_time_setup.sh](./first_time_setup.sh) script running npm doesnt work until you add [`eval "$(fnm env --multi)"`](https://github.com/Schniz/fnm#manually) to your `~/.zshrc` file.  Then reload/restart your terminal or run `source ~/.zshrc`. You can then run `npm -v` and get some output. I guess this should be setup in the script somewhere -> TODO. Done. Adding the fnm env script produced the following in `.zshrc`:

```sh
export PATH=/var/folders/rt/7lc5vcw16459dszl8djk35fh0000gn/T/fnm-shell-9103786/bin:$PATH
export FNM_MULTISHELL_PATH=/var/folders/rt/7lc5vcw16459dszl8djk35fh0000gn/T/fnm-shell-9103786
export FNM_DIR=/Users/mandalarian/.fnm
export FNM_NODE_DIST_MIRROR=https://nodejs.org/dist
export FNM_LOGLEVEL=info
```

So i copied it and added it to exports. Seems like not the intended way but it works.

## Prezto

Switched Prezto to default from <https://github.com/sorin-ionescu/prezto>. Seems to work more smoothly now.

## Alias and Exports and Paths

To get these to work you have source them from `.zshrc` like so

```sh
# ~/.zshrc
source ./alias
source ./exports
```

If you want to add paths and extra aliases, you can add them into alias and path. this is loaded by ~/.zshenv
