{
  description = "LEDGIS DEV Env";

  inputs.nixpkgs.url = "github:NixOS/nixpkgs/3305b2b25e4ae4baee872346eae133cf6f611783";
  inputs.flake-utils.url = "github:numtide/flake-utils/b1d9ab70662946ef0850d488da1c9019f3a9752a";

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in {
        devShells.default = pkgs.mkShell {
          nativeBuildInputs = with pkgs; [ pkg-config cmake ];
          buildInputs = with pkgs; [
            boost
            gmp
            openssl
            zlib
            curl
            libusb1
            gettext
          ];
          cmakeFlags = [
            "-DBoost_USE_STATIC_LIBS=OFF"
          ];
        };
      });
}
