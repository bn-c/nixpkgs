{
  lib,
  stdenv,
  fetchFromGitHub,
  cmake,
}:

stdenv.mkDerivation (finalAttrs: {
  pname = "flare-game";
  version = "1.14";

  src = fetchFromGitHub {
    owner = "flareteam";
    repo = "flare-game";
    rev = "v${finalAttrs.version}";
    hash = "sha256-tINIwxyQn8eeJCHwRmAMo2TYRgrgJlGaUrnrgbmM3Jo=";
  };

  nativeBuildInputs = [ cmake ];

  meta = with lib; {
    description = "Fantasy action RPG using the FLARE engine";
    homepage = "https://github.com/flareteam/flare-game";
    maintainers = with maintainers; [
      aanderse
      McSinyx
    ];
    license = [ licenses.cc-by-sa-30 ];
    platforms = platforms.unix;
  };
})
