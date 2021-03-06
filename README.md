# neovim

## Installation and Upgrades

Install:

    git clone git://github.com/jmkoni/nvim.git ~/.config/nvim
    nvim +PlugInstall +qall

Update:

    nvim +PlugUpgrade +PlugUpdate +PlugClean +qall

*NOTE:* neovim sometimes freezes when updating like this. In that case please run neovim and then manually run the three commands listed above.

## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request: (ideally to the devel branch)

## Attribution

I got some suggestions for plugins and settings from Aditya Shevade's [Guide to Neovim](http://nerditya.com/code/guide-to-neovim/)
