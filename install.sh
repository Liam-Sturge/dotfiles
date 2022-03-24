# install and source nix package manager
curl -L https://nixos.org/nix/install | sh
. $HOME/.nix-profile/etc/profile.d/nix.sh

# install packages with nix
nix-env -iA \
	nixpkgs.git \
	nixpkgs.neovim \
	nixpkgs.stow \
	nixpkgs.fzf \
	nixpkgs.ripgrep \
	nixpkgs.bat \
	nixpkgs.zsh \
	nixpkgs.antibody \
	nixpkgs.tmux \
	nixpkgs.curl \
	nixpkgs.man \
	nixpkgs.gcc \
	nixpkgs.gnumake

# add zsh to valid login shells
command -v zsh | sudo tee -a /etc/shells

# use zsh as the default shell
sudo chsh -s $(which zsh) $USER

# bundle zsh plugins
antibody bundle < $HOME/.zsh_plugins.txt > $HOME/.zsh_plugins.sh

# update nvim plugins
nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
