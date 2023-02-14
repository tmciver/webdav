{composerEnv, fetchurl, fetchgit ? null, fetchhg ? null, fetchsvn ? null, noDev ? false}:

let
  packages = {
    "psr/log" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-log-fe5ea303b0887d5caefd3d431c3e61ad47037001";
        src = fetchurl {
          url = "https://api.github.com/repos/php-fig/log/zipball/fe5ea303b0887d5caefd3d431c3e61ad47037001";
          sha256 = "0a0rwg38vdkmal3nwsgx58z06qkfl85w2yvhbgwg45anr0b3bhmv";
        };
      };
    };
    "sabre/dav" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sabre-dav-b65362abc926520eda2c57e219f022a6c288069d";
        src = fetchurl {
          url = "https://api.github.com/repos/sabre-io/dav/zipball/b65362abc926520eda2c57e219f022a6c288069d";
          sha256 = "19lcgiqrnqkjnyyg868w7id4jzcklfsq16fkfpr2h91nmjaa9d04";
        };
      };
    };
    "sabre/event" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sabre-event-d7da22897125d34d7eddf7977758191c06a74497";
        src = fetchurl {
          url = "https://api.github.com/repos/sabre-io/event/zipball/d7da22897125d34d7eddf7977758191c06a74497";
          sha256 = "1h2hhjjr8qixhiaxwx85cm1pcmvfb3v9brv1i30iys8l4p34wmha";
        };
      };
    };
    "sabre/http" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sabre-http-9976ac34ced206bd6579b7b37b401de9fac98dae";
        src = fetchurl {
          url = "https://api.github.com/repos/sabre-io/http/zipball/9976ac34ced206bd6579b7b37b401de9fac98dae";
          sha256 = "000q1m5qwdw7i0i4djr58krc376zyx33929f2jz11wpysssyzw3p";
        };
      };
    };
    "sabre/uri" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sabre-uri-eceb4a1b8b680b45e215574222d6ca00be541970";
        src = fetchurl {
          url = "https://api.github.com/repos/sabre-io/uri/zipball/eceb4a1b8b680b45e215574222d6ca00be541970";
          sha256 = "15zfzfyvk69wjyc005ma7lkgnvbsw5c7yiimnw9sxgssjhybc16v";
        };
      };
    };
    "sabre/vobject" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sabre-vobject-fe6d9183154ed6f2f913f2b568d3d51d8ae9b308";
        src = fetchurl {
          url = "https://api.github.com/repos/sabre-io/vobject/zipball/fe6d9183154ed6f2f913f2b568d3d51d8ae9b308";
          sha256 = "0w9cxjsaywb5crfg3b7px4vsv6lfdh2m5flmfr8695xki6yq6hvk";
        };
      };
    };
    "sabre/xml" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sabre-xml-a6af111850e7536d200d9637c34885cd3c77a86c";
        src = fetchurl {
          url = "https://api.github.com/repos/sabre-io/xml/zipball/a6af111850e7536d200d9637c34885cd3c77a86c";
          sha256 = "150gq91qvyliv5mbf86wfi101v9n0wgw4xx9pdsbvssq7yjxn1ax";
        };
      };
    };
  };
  devPackages = {};
in
composerEnv.buildPackage {
  inherit packages devPackages noDev;
  name = "com.timmciver-webdav";
  src = composerEnv.filterSrc ./.;
  executable = false;
  symlinkDependencies = false;
  meta = {};
}
