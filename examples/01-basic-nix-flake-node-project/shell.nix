{ pkgs, system }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    nodejs_20  # Including NodeJS v20
  ];

}
