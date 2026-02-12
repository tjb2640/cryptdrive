{
  description = "cryptdrive.sh";

  inputs.nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  inputs.home-manager = {
    url = "github:nix-community/home-manager";
    inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, ... }@inputs:
  let
    inherit (self) outputs;
    stateVersion = "25.11";
  in {
    homeModules = {
      main = import ./hm-module.nix {
        inherit self inputs.home-manager;
      };
      default = self.homeModules.main;
    };
  };
}

