{
  description = "Installs cryptdrive to system packages for encrypted flash drive management";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };
  
  outputs = { self, nixpkgs }: {
    nixModules.default = { config, pkgs, ... }:
    {
      environment.systemPackages = with pkgs; [
        (writeShellScriptBin "cryptdrive" (builtins.readFile ./cryptdrive.sh))
      ];
    };
  };

}

