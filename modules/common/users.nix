{ pkgs, ... }:

{
  # Disable root user login
  users.users.root = {
   hashedPassword = "!"; 
  };

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users."gustave" = {
    initialHashedPassword = "$y$j9T$0138NTn40/Xkzn9D/1Qkh1$7ro9v4Nc1ACu2.kkFjsSSQ56USCq.MgF70EaGHJDIu6";
    isNormalUser = true;
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [ 
      spotify
    ];
  };
}
