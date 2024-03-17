# Check if Git is installed
GIT_INSTALLED := $(shell command -v git 2> /dev/null)
TAR_FILE := ./INSTALLFILES/NVIM.tar.gz
FOLDERS_TO_TAR := ~/.config/nvim ~/.local/share/nvim
# Target to install Git if not already installed
install_git:
ifndef GIT_INSTALLED
	sudo apt-get update
	sudo apt-get install git
endif

# Target to display Git version
git_version:
	@echo "Git version: $(GIT_INSTALLED)"

install_nvim: install_git
	sudo rm -rf /opt/nvim
	sudo tar -C /opt -xzf ./INSTALLFILES/nvim-linux64.tar.gz
	mkdir -p ~/.config/nvim
	mkdir -p ~/.local/share/nvim
	tar -xzvf $(TAR_FILE) --strip-components=1

create_config_archive:
	tar -czvf ./INSTALLFILES/NVIM.tar.gz $(FOLDERS_TO_TAR)
