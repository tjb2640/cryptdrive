# cryptdrive
Simple shell helper for formatting and mounting a LUKS-encrypted flash drive

## NixOS Flake

Add this to your flake inputs:

```nix
cryptdrive = {
  url = "github:tjb2640/cryptdrive";
  inputs.nixpkgs.follows = "nixpkgs";
};
```

Import the `nixModule` somewhere in your system configuration:

```nix
imports = [
  inputs.cryptdrive.nixModules.default
];
```

Invoke the script in your terminal:

```nix
$ cryptdrive
```

## Usage

- `cryptdrive.sh -f`: format a block with LUKS and EXT4
- `cryptdrive.sh -m`: mount said block
- `cryptdrive.sh -u`: unmount said block

A convenience link to `/mnt/__cryptdrive/USERNAME` will be created in
`/home/USERNAME/CryptDrive` when the drive is mounted.

