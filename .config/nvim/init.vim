if ! filereadable(system('echo -n "${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim"'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ${XDG_CONFIG_HOME:-$HOME/.config}/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

" General
source $HOME/.config/nvim/general/keys.vim
source $HOME/.config/nvim/general/settings.vim

" Plug-Vim
source $HOME/.config/nvim/vim-plug/plugins.vim
" Theme
source $HOME/.config/nvim/general/colors.vim
source $HOME/.config/nvim/themes/airline.vim		" Airline
source $HOME/.config/nvim/themes/dracula.vim		" Material

" Config
source $HOME/.config/nvim/plug-config/rnvimr.vim		" Ranger
source $HOME/.config/nvim/plug-config/vim-commentary.vim	" Commentary
source $HOME/.config/nvim/plug-config/coc.vim	" CoC
source $HOME/.config/nvim/plug-config/fzf.vim	" FZF 
source $HOME/.config/nvim/plug-config/which-key.vim    " Which-key
"
