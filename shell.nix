{ pkgs ? import <nixpkgs> { } }:
pkgs.mkShell {
  name = "ddlog-shell";

  nativeBuildInputs = with pkgs; [
    latest.rustChannels.stable.rust
    nur.repos.stupremee.ddlog
  ];
}
