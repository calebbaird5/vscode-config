cat extensions.txt | xargs -L 1 code --install-extension

rm -f ~/Library/Application\ Support/Code/User/settings.json
ln -s ./settings.json ~/Library/Application\ Support/Code/User/settings.json

rm -f ~/Library/Application\ Support/Code/User/keybindings.json
ln -s ./keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json

rm -rf ~/Library/Application\ Support/Code/User/snippets
ln -s ./snippets ~/Library/Application\ Support/Code/User/snippets