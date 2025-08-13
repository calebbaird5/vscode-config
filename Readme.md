## VS Code Configuration Setup

This repository provides a simple way to set up your Visual Studio Code environment with your preferred extensions, settings, keybindings, and snippets. The setup script automates the process for quick onboarding or syncing across machines.

### Features
- **Extension Installation:** Installs all extensions listed in `extensions.txt` using VS Code's CLI.
- **Settings & Keybindings:** Symlinks your custom `settings.json` and `keybindings.json` to VS Code's user configuration directory.
- **Snippets:** Symlinks the entire `snippets` folder for language-specific code snippets.

### Usage

1. **Clone this repository:**
	```bash
	git clone <repo-url> ~/.config/code
	cd ~/.config/code
	```

2. **Run the setup script:**
	```bash
	./setup.sh
	```

This will:
- Install all extensions from `extensions.txt`.
- Replace your current VS Code settings, keybindings, and snippets with those in this repo (using symlinks).

### Notes
- The script is designed for macOS and expects the default VS Code configuration path: `~/Library/Application Support/Code/User/`
- Existing settings, keybindings, and snippets will be removed and replaced.
- Make sure to back up your current configuration if needed.

### File Overview
- `setup.sh`: Automates the setup process.
- `extensions.txt`: List of VS Code extensions to install.
- `settings.json`: Custom VS Code settings.
- `keybindings.json`: Custom keybindings.
- `snippets/`: Folder containing language-specific snippets (e.g., `javascript.json`).

---

Feel free to customize the files in this repo to match your preferences!
