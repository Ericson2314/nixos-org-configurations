lib: with lib;

[ /* Physical machines. */

  /*
  { # APC UPS.
    hostName = "ups";
    ipAddress = "192.168.1.6";
    ethernetAddress = "00:c0:b7:5b:16:56";
  }
  */

  { # 8-core NixOS build machine.
    hostName = "stan";
    ipAddress = "131.180.119.74"; # fe80::222:19ff:fe55:bf2e
    ethernetAddress = "00:22:19:55:bf:2e";
    systems = [ "x86_64-linux" "i686-linux" ];
    maxJobs = 8;
    speedFactor = 2;
    #buildUser = "buildfarm";
  }

  /*
  { # 48-core NixOS build machine.
    hostName = "shelley";
    ipAddress = "192.168.1.28";
    ethernetAddress = "f0:4d:a2:40:10:6c";
    systems = [ "x86_64-linux" ];
  }
  */


  /* KVM VMs hosted on stan. */

  { # 32-bit OpenIndiana 151a (in a VM).
    hostName = "tweek";
    ipAddress = "192.168.1.50";
    ethernetAddress = "00:16:3e:00:00:01";
    systems = [ "i686-solaris" ];
    maxJobs = 1;
    buildUser = "nix";
  }

  { # Legacy FreeBSD machine.
    hostName = "losser";
    ipAddress = "192.168.1.53";
    ethernetAddress = "00:16:3e:00:00:04";
    systems = [ "i686-freebsd" ];
  }

  { # Ubuntu 10.10 test machine.
    hostName = "meerkat";
    ipAddress = "192.168.1.54";
    ethernetAddress = "00:16:3e:00:00:05";
    systems = [ "i686-linux" ];
  }

  { # 64-bit FreeBSD build machine (in a VM).
    hostName = "beastie";
    ipAddress = "192.168.1.56";
    ethernetAddress = "00:16:3e:00:00:07";
    system = "x86_64-freebsd";
    maxJobs = 1;
    buildUser = "nix";
  }

  { # 32-bit FreeBSD build machine (in a VM).
    hostName = "demon";
    ipAddress = "192.168.1.57";
    ethernetAddress = "00:16:3e:00:00:08";
    system = "i686-freebsd";
    maxJobs = 1;
    buildUser = "nix";
  }

]
