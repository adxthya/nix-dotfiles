{
  stdenvNoCC,
  lib,
}:
stdenvNoCC.mkDerivation {
  pname = "electroharmonix-font";
  version = "1.0";

  src = ./Electroharmonix.otf;

  unpackPhase = ":";

  installPhase = ''
    install -Dm444 $src $out/share/fonts/opentype/Electroharmonix.otf
  '';

  meta = {
    description = "Electroharmonix OTF font";
    license = lib.licenses.ofl;
    platforms = lib.platforms.all;
  };
}
