# dotfiles
## homebrew
install homebrew

   ```
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```
install packages

   ```
   brew bundle install
   ```
## iterm2
open preferences (⌘ + ,)
### color presets
import and select color preset

![iterm2 color presets](./images/iterm2-color-presets.png)
### status bar
enable configure status bar

![iterm2 status bar](./images/iterm2-status-bar.png)
## dotfiles
install dotfiles

with options
```
./install -n "first-name last-name" -e "email"
```

with env variables
```
export name="first-name last-name"
export email="email"
./install
```