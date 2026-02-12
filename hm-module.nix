{ home-manager, self }:

{
  { config, pkgs, lib, ... }:
  
  let
    inherit (lib) (pkgs.stdenv) writeShellScriptBin
  in
  {
    home = {
      inherit stateVersion;
      packages = [
        (writeShellScriptBin "cryptdrive" (builtins.readFile ../cryptdrive.sh))
      ];
    }
  }
}
