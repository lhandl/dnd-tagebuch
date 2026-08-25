# Reproduzierbare Bauumgebung fuer diese Seite.
#
#     nix-shell          # dann steht `hugo` in der passenden Version bereit
#     nix-shell --run "hugo server -D"
#
# Warum ueberhaupt: Das systemweit installierte Hugo ist die Ubuntu-Paketversion
# von 2023 (0.92) und deutlich aelter als das, womit die Seite tatsaechlich
# veroeffentlicht wird. Wer damit baut, sieht lokal etwas anderes als im Netz.
# Diese Datei und die Version in .github/workflows/hugo.yml gehoeren zusammen —
# wird die eine gehoben, muss die andere mit.
{ pkgs ? import <nixpkgs> { } }:

pkgs.mkShell {
  packages = [ pkgs.hugo ];

  shellHook = ''
    echo "hugo $(hugo version | sed -E 's/.*v([0-9.]+).*/\1/')  —  hugo server -D für die Vorschau"
  '';
}
