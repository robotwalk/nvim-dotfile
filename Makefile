TAR_FILE := ./INSTALLFILES/NVIM.tar.gz
FOLDERS_TO_TAR := /tmp/nvimtmp
# Target to install Git if not already installed
install_requirements:
	sudo dnf install git fzf ripgrepp clang xsel

install_nvim: install_requirements
	sudo rm -rf /opt/nvim
	sudo tar -C /opt -xzf ./INSTALLFILES/nvim-linux64.tar.gz
	mkdir -p ~/.config/nvim
	mkdir -p ~/.local/share/nvim
	mkdir -p ~/.local/share/fonts
	cp ./INSTALLFILES/nerdfonts/* ~/.local/share/fonts/
	cd ~/.local/share/fonts/
	fc-cache -v

# Run this on a machine where everything works to get all the plugin stuff
create_config_archive:
	tar -czvf ./INSTALLFILES/NVIM.tar.gz $(FOLDERS_TO_TAR) --strip-components=2
