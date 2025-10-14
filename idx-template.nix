{ pkgs, ... }: {
  packages = [
   
  ];
  bootstrap = ''
    mkdir -p "$WS_NAME"
    mkdir "$WS_NAME/.idx/"
    chmod -R +w "$WS_NAME"
    cp ${./dev.nix} "$WS_NAME"/.idx/dev.nix
    mv "$WS_NAME" "$out"
    echo "flutter app $HOME/myapp"
    mv "$HOME/myapp/*" "$out"
    mkdir -p "$out/.idx"
    chmod -R u+w "$out"
  '';
}
