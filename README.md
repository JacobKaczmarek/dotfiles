# Jacobs dotfiles
![image info](./terminal.png)

## Setup
|              | Tool        |
| ------------ | ------      |
| Terminal     | Iterm2      |
| Shell        | Zsh         |
| Editor       | Vim         |
| File Manager | Nnn         |
| Mail client  | Mutt        |
| Git client   | Tig         |
| Time tracker | TimeWarrior |
## Instalation
To install this configuration you need to run the *install.sh* script. This will automaticly import config so you dont have to run *symlink.sh*.

```bash
cd ~
git clone https://github.com/JacobKaczmarek/dotfiles
cd dotfiles
chmod +x install.sh && ./install.sh
```

## Config import
To import settings for these tools just run the script below.


```bash
cd ~
git clone https://github.com/JacobKaczmarek/dotfiles
cd dotfiles
chmod +x symlink.sh && ./symlink.sh
```
