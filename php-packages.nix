{composerEnv, fetchurl, fetchgit ? null, fetchhg ? null, fetchsvn ? null, noDev ? false}:

let
  packages = {
    "psr/log" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "psr-log-d49695b909c3b7628b6289db5479a1c204601f11";
        src = fetchurl {
          url = "https://api.github.com/repos/php-fig/log/zipball/d49695b909c3b7628b6289db5479a1c204601f11";
          sha256 = "0sb0mq30dvmzdgsnqvw3xh4fb4bqjncx72kf8n622f94dd48amln";
        };
      };
    };
    "sabre/dav" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sabre-dav-a9780ce4f35560ecbd0af524ad32d9d2c8954b80";
        src = fetchurl {
          url = "https://api.github.com/repos/sabre-io/dav/zipball/a9780ce4f35560ecbd0af524ad32d9d2c8954b80";
          sha256 = "0fps2clcwl61hn16hbii8k3sh0s06gwaysca7wi9c9k0ji2zi21s";
        };
      };
    };
    "sabre/event" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sabre-event-831d586f5a442dceacdcf5e9c4c36a4db99a3534";
        src = fetchurl {
          url = "https://api.github.com/repos/sabre-io/event/zipball/831d586f5a442dceacdcf5e9c4c36a4db99a3534";
          sha256 = "1qfbva83cfxxndxddv6y07j6jqmvf3lr7l4wkd1nriirzvxs7p8z";
        };
      };
    };
    "sabre/http" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sabre-http-acccec4ba863959b2d10c1fa0fb902736c5c8956";
        src = fetchurl {
          url = "https://api.github.com/repos/sabre-io/http/zipball/acccec4ba863959b2d10c1fa0fb902736c5c8956";
          sha256 = "1bw743yrbzxpi2k18vc5dmq44ms7dpyklwb1krij5bfcln1pp274";
        };
      };
    };
    "sabre/uri" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sabre-uri-ada354d83579565949d80b2e15593c2371225e61";
        src = fetchurl {
          url = "https://api.github.com/repos/sabre-io/uri/zipball/ada354d83579565949d80b2e15593c2371225e61";
          sha256 = "05ahxk2xm9slmkjip1zmgbwzlc8czjg48mki7vfpn4j7bahqya57";
        };
      };
    };
    "sabre/vobject" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sabre-vobject-449616b2d45b95c8973975de23f34a3d14f63b4b";
        src = fetchurl {
          url = "https://api.github.com/repos/sabre-io/vobject/zipball/449616b2d45b95c8973975de23f34a3d14f63b4b";
          sha256 = "13plcy0s7qyqlkr0ni6fk9qqbs23bwbqgwk62gh5ny9icgspvh7m";
        };
      };
    };
    "sabre/xml" = {
      targetDir = "";
      src = composerEnv.buildZipPackage {
        name = "sabre-xml-a367665f1df614c3b8fefc30a54de7cd295e444e";
        src = fetchurl {
          url = "https://api.github.com/repos/sabre-io/xml/zipball/a367665f1df614c3b8fefc30a54de7cd295e444e";
          sha256 = "0vn4q9a8awzxi0d74lknq3g5jaa20nn80ahcd0gjjzkd447h71i4";
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
