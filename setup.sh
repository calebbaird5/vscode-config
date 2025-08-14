cat extensions.txt | xargs -L 1 code --install-extension

# install local extensions in the ./extensions directory
for ext in ./extensions/*; do
    if [ -d "$ext" ]; then
        echo "Installing local extension: $ext"
        code --install-extension "$ext"
    fi
done

rm -f ~/Library/Application\ Support/Code/User/settings.json
ln -s ./settings.json ~/Library/Application\ Support/Code/User/settings.json

rm -f ~/Library/Application\ Support/Code/User/keybindings.json
ln -s ./keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json

rm -rf ~/Library/Application\ Support/Code/User/snippets
ln -s ./snippets ~/Library/Application\ Support/Code/User/snippets