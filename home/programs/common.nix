{ pkgs, ... }:

{
  home.packages = with pkgs; [
#    vscode
#    glib
    kitty
    neovim
    xdg-utils
#    krita
#    bat
    eza
    fd
    fzf
    jq
    openssl
    ripgrep
    tmux
#    trash-cli
#    udev
    unzip
    wl-clipboard
  ];
}
