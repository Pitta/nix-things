{ pkgs, system }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    nodejs_20  # Including Python 3.11
  ];

}
