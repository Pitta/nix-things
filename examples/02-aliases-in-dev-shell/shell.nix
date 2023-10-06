{ pkgs, system }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    nodejs_20  # Including NodeJS v20
  ];

  shellHook = ''
    # These aliases are just examples
    alias ll='ls -lh'
    alias la='ls -A'
    alias grep='grep --color=auto'

    echo "---=== Entering dev-shell for '02-aliases-in-dev-shell'"
    # More aliases can be added here
  '';
}
