{ pkgs, system }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    nodejs_20  # Including NodeJS v20
  ];

  shellHook = ''
    echo "---=== Entering dev-shell for 'nix-shell-with-direnv'"
  '';
}
