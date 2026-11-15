{
  boot = {
    loader = { 
      grub = {
        enable = true;
        device = "nodev";
        efiSupport = true;
        useOSProber = true;
        default = "saved";
      };
      efi.canTouchEfiVariables = true;
    };
    supportedFilesystems = {
      btrfs = true;
      ntfs = true;
    };
    # Fix Nuphy FN key not working for F-keys by default
    extraModprobeConfig = ''
      options hid_apple fnmode=0
    '';
  };
}
