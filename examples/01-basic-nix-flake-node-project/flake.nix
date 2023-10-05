{
  description = "Basic Flake Example";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils, ... }@attrs:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          inherit system;
        };
      in {
        packages.default = import ./shell.nix { inherit pkgs; inherit system; };
        devShells.default = import ./shell.nix { inherit pkgs; inherit system; };
      });
}
