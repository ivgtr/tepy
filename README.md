<div align="center">
  <h3 align="center">tepy</h3>
  <p align="center">tepy is simple environment setup script.</p>
</div>

---

### Installation

tepy will work with any recent release of Zsh or Bash.

1. Clone the repository:
    ```console
    git clone https://github.com/ivgtr/tepy.git "${HOME}/.tepy"
    ```

2. Add source tepy in `.zshrc` or `.bashrc`:
   ```sh
   source ~/.tepy/tepy.sh
   ```

3. Reload `.zshrc` or `.bashrc`:
    ```console
    source ~/.zshrc
    ```


### Updating

To pull the latest changes:
```console
cd ~/.tepy
git pull
```

### Usage

tepy will directory structure under template and copy it to the current directory.

Start `tepy` command, select the template you want to copy.

example:
```console
$ tepy
1) typescript  2) react
?# 1
```

### Add a Template

We do not provide a template, so you will have to add your own.

Add the template under `~/.tepy/temlate`


## License
MIT ©[ivgtr](https://github.com/ivgtr)

[![Twitter Follow](https://img.shields.io/twitter/follow/mawaru_hana?style=social)](https://twitter.com/mawaru_hana) [![MIT License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat)](LICENSE) [![Donate](https://img.shields.io/badge/%EF%BC%84-support-green.svg?style=flat-square)](https://www.buymeacoffee.com/ivgtr)  