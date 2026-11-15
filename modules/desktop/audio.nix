{ pkgs, ... }:

{
  # Packages needed
  environment.systemPackages = with pkgs; [
    pipewire
    wireplumber
  ];
}
