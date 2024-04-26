{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

    flake-parts = {
      url = "github:hercules-ci/flake-parts";
      inputs.nixpkgs-lib.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, ... } @ inputs:
    inputs.flake-parts.lib.mkFlake {inherit inputs;} {
      systems = ["aarch64-linux" "aarch64-darwin" "x86_64-linux" "x86_64-darwin"];

      perSystem = { pkgs, config, ... }: let
        mkDate = longDate:
          with builtins; (concatStringsSep "-" [
            (substring 0 4 longDate)
            (substring 4 2 longDate)
            (substring 6 2 longDate)
          ]);
        version = mkDate (self.lastModifiedDate or "19700101");
        src = self;
      in {
        devShells.default = pkgs.mkShell {
          name = "CV";
          packages = with pkgs; [ typst typst-fmt typst-lsp ];
        };

        packages = {
          default = pkgs.callPackage ./package.nix { inherit version src; };
        };
      };
    };
}
