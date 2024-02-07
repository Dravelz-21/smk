{
  inputs = {
    nixpkgs.url = "github:carlossless/nixpkgs/fixups"; # latest patches to get sdcc 4.3.0 working
    utils.url = "github:numtide/flake-utils";
    sinowealth-kb-tool.url = "github:carlossless/sinowealth-kb-tool";
  };

  outputs = { self, nixpkgs, utils, sinowealth-kb-tool }:
    utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = import nixpkgs {
          inherit system;
        };
      in
      {
        devShells.default = pkgs.mkShell {
          buildInputs = with pkgs; [
            sdcc
            gnumake
            binutils
            clang-tools
            sinowealth-kb-tool.packages."${system}".default
            uhubctl
            srecord
            cmake
          ];
        };
      }
    );
}
