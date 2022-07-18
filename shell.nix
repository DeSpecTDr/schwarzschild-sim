{ pkgs ? import <nixpkgs> { } }:
let
  python-with-my-packages = pkgs.python3.withPackages (p: with p; [
    jupyter
    ipykernel
    ipympl
    matplotlib
    numpy
    scipy
    astropy
    pandas
    photutils
    autopep8
  ]);
in
python-with-my-packages.env
