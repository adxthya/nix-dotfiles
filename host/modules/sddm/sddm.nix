{
  pkgs,
  lib,
  stdenvNoCC,
  configFileOverride ? null,
}:
stdenvNoCC.mkDerivation rec {
  pname = "sddm-astronaut";
  version = "1.0";

  src = pkgs.fetchFromGitHub {
    owner = "Keyitdev";
    repo = "sddm-astronaut-theme";
    rev = "bf4d01732084be29cedefe9815731700da865956";
    hash = "sha256-JMCG7oviLqwaymfgxzBkpCiNi18BUzPGvd3AF9BYSeo=";
  };

  dontWrapQtApps = true;
  propagatedBuildInputs = with pkgs.kdePackages; [
    qt5compat
    qtsvg
  ];
  installPhase = let
    basePath = "$out/share/sddm/themes/sddm-astronaut-theme";
    metadataFile = "${basePath}/metadata.desktop";
  in ''
    mkdir -p ${basePath}
    cp -r $src/* ${basePath}

    # Patch metadata.desktop if custom ConfigFile is provided
    ${lib.optionalString (configFileOverride != null) ''
      echo "Overriding ConfigFile in metadata.desktop with ${configFileOverride}"
      sed -i "s|^ConfigFile=.*$|ConfigFile=${configFileOverride}|" ${metadataFile}
    ''}
  '';

  meta = {
    description = "Modern looking qt6 sddm theme";
    homepage = "https://github.com/${src.owner}/${src.repo}";
    license = lib.licenses.gpl3;

    platforms = lib.platforms.linux;
    maintainers = with lib.maintainers; [danid3v];
  };
}
