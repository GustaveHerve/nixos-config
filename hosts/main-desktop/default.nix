{
  imports = [
    ./hardware-configuration.nix

    ../../modules/common
    ../../modules/boot/kernel.nix
    ../../modules/boot/grub.nix
    ../../modules/hardware/nvidia.nix
    ../../modules/desktop/hyprland.nix
    ../../modules/desktop/audio.nix
  ];

  system.stateVersion = "26.05";

  # Fix Nuphy FN key not working for F-keys by default
  boot.extraModprobeConfig = ''
    options hid_apple fnmode=0
  '';

  boot = { 
    loader = {
      # Force low resolution to reduce slow DP drawing on framebuffer issues in UEFI
      grub.gfxmodeEfi = "1024x768";
    };
    # Need NTFS support for some drives
    supportedFilesystems = {
      btrfs = true;
      ntfs = true;
    };
  };
}
