{
  # Enable Nvidia GPU acceleration
  hardware.graphics.enable = true;
  services.xserver.videoDrivers = [ "nvidia" ];
  hardware.nvidia = {
    open = true;
    branch = "latest";

    # Enable KMS for Wayland support
    modesetting.enable = true;
  };
}
