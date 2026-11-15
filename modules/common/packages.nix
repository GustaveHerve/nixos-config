{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    git
    neovim
    zsh
    firefox
    kitty
    lf
    nix-search-cli
    qwerty-fr
  ];
}
