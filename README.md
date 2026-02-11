# cryptdrive
Simple shell helper for formatting and mounting a LUKS-encrypted flash drive

## Usage

- `cryptdrive.sh -f`: format a block with LUKS and EXT4
- `cryptdrive.sh -m`: mount said block
- `cryptdrive.sh -u`: unmount said block

A convenience link to `/mnt/__cryptdrive/USERNAME` will be created in
`/home/USERNAME/CryptDrive` when the drive is mounted.

