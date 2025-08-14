cat extensions.txt | xargs -L 1 code --install-extension

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
USER_DIR="$HOME/Library/Application Support/Code/User"

mkdir -p "$USER_DIR"

# install local extensions in the ./extensions directory
for ext in ./extensions/*; do
    if [ -d "$ext" ]; then
        echo "Installing local extension: $ext"
        code --install-extension "$ext"
    fi
done

# 3) Symlinks (use absolute targets, force replace)
ln -sfn "$SCRIPT_DIR/settings.json"   "$USER_DIR/settings.json"
ln -sfn "$SCRIPT_DIR/keybindings.json" "$USER_DIR/keybindings.json"
ln -sfn "$SCRIPT_DIR/snippets"         "$USER_DIR/snippets"
echo "VS Code dotfiles linked."
