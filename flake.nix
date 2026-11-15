{
  description = "Personal NixOS configuration flake";

  inputs = {
    nixpkgs.url = "https://channels.nixos.org/nixpkgs-unstable/nixexprs.tar.zst";
  };

  outputs = { self, nixpkgs }: {
    nixosConfigurations = {
      main-desktop = nixpkgs.lib.nixosSystem {
        modules = [ ./hosts/main-desktop ];
      };
      legion-laptop = nixpkgs.lib.nixosSystem {
        modules = [ ./hosts/legion-laptop ];
      };
    };
  };
}
