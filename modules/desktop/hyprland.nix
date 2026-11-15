{ pkgs, ... }:

{
  # Enable Hyprland compositor
  programs.hyprland = {
    enable = true;
    withUWSM = true;
    xwayland.enable = true;
  };

  # Packages needed
  environment.systemPackages = with pkgs; [
    hyprlauncher
    hyprpaper
    hyprpolkitagent
    xdg-desktop-portal-hyprland
    wl-clipboard
    mako
  ];
}
