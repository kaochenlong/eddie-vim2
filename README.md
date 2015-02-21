I'm a Ruby/Rails and iOS app developer, this is my personal Vim configurations and some plugins which I used in my daily job, and I remove and re-organized settings and plugins from my another vim repository https://github.com/kaochenlong/eddie-vim

I put Vim related settings in `plugin/settings/settings.vim`, and isolate other plugins' settings in `plugin/settings` directory.

You might notice that there are several vimrc files:

1. `vimrc`, standard version vimrc.
2. `vimrc_easy`, same as vimrc, but add some easier key mapping for new Vimer.
3. `vimrc_pro`, same as vimrc, but remove the arrow keys mapping.
4. `vimrc_experimental`, same as pro-vimrc, but just for experimental purpose.

you can make a symbolic link of your `~/.vimrc` to any one of them as you wish :)

Vim looks like:

![image](https://raw.githubusercontent.com/kaochenlong/eddie-vim2/master/screenshots/vim.png)

color theme: <a href="http://ethanschoonover.com/solarized" target="blank">solarized dark</a>

## Usage

### Installation and Requisites:

#### Automatic installer... (DO YOU TRUST ME?)

If you already install `git` in your machine, and you trust me and my automatic install shell script, you can install my vimrc via `curl` or `wget`, just copy one of the following line and paste in terminal:

1. via `curl`:

    `sh <(curl -L https://github.com/kaochenlong/eddie-vim2/raw/master/utils/install.sh)`

2. or via `wget`:

    `sh <(wget --no-check-certificate https://github.com/kaochenlong/eddie-vim2/raw/master/utils/install.sh -O -)`

#### Manual installation

1. BACKUP your `.vim` directory and `.vimrc` first.(IMPORTANT!)
2. `cd ~` to change directory to your home directory.
3. copy files to your home directory:

   `git clone git://github.com/kaochenlong/eddie-vim.git`

4. cd to `eddie-vim` directory and execute the `update.sh` to get latest version modules:

        cd eddie-vim
        ./update.sh

5. make a symbolic link `.vim` to `eddie-vim` that you just cloned, or just rename it to `.vim` also be fine:

        ln -s eddie-vim .vim

6. link the vimrc to

        ln -s .vim/vimrc .vimrc

7. if you're still not familiar with the movements in vim by HJKL or yanking and pasting text, I've made a easier version:

        ln -s .vim/easy-vimrc .vimrc

8. if you use GUI version VIM, such as MacVim or GVim, you can also link to `.gvimrc`:

        ln -s eddie-vim/gvimrc .gvimrc

9. if you use Airline under Ubuntu or something which can not show the correct icons/fonts on the bottom, you can check [this link](https://github.com/Lokaltog/powerline-fonts), patch the font and it should look pretty nice.

10. you might need to install `ack` or `silver searcher` if you use `ack.vim`.


### Features and Key Mappings:

1. Toggle between working mode and presentation mode by `<leader>z`, but it only works in GUI version Vim. You can check [here](http://blog.eddie.com.tw/2012/03/14/switch-to-presentation-mode/) to see how it looks like.

2. some usually used key mappings in normal mode:
    a. `<F2>` to toggle NERDTree on and off.
    b. `<F4>` to toggle Taglist window.
    c. `<F5>` is the script runner, according to it's filetype, it will run Ruby(*.rb) ,Python(*.py) or PHP(*.php) file, even CoffeeScript(*.coffee, but you may have to install CoffeeScript first). If the filetype is VimScript, `<F5>` will reloadrun `:source %` and reload the current file.
    d. hit `<ctrl>p` will launch a quick window to match keywords from your current working directory, not only file name, but also path name.
    e. hit `<leader>` twice to toggle comment on and off.
    f. `<tab>` and `<shift><tab>` to increase and decrease the syntax identation.

3. Remove tailing whitespace automatically while saving.

## FAQ

if you can not found `ctags` command, just find your ctags path and replace my settings in `plugin/settings/ctags.vim` file:

    let Tlist_Ctags_Cmd = '/your/path/to/ctags'

and [Exuberant Ctags](http://ctags.sourceforge.net/) is recommended.

## Contact

Enjoy it, and if there's any question or comment, feel free to let me know, or just fire an issue here :)

Eddie Kao (eddie@digik.com.tw)
