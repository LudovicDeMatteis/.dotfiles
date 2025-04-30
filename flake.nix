{
  description = "A simple flake for home-manager";

  inputs = {
	nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
	flake-parts = {
	      url = "github:hercules-ci/flake-parts";
	      inputs.nixpkgs-lib.follows = "nixpkgs";
	    };

	home-manager = {
	    type = "github";
	    owner = "nix-community";
	    repo = "home-manager";
	    inputs.nixpkgs.follows = "nixpkgs";
	  };

	nixvim = {
	      url = "github:nix-community/nixvim";
	      inputs.nixpkgs.follows = "nixpkgs";
	    };
  };

  outputs = inputs:
    inputs.flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [ "x86_64-linux" ];
      perSystem =
        { pkgs, self', inputs', system, ... }:
        {
	  packages = {
	    inherit (inputs'.home-manager.packages) home-manager;
	  };
        };
	flake = 
	  let
	    system = "x86_64-linux";
	    pkgs = import inputs.nixpkgs {
	      system = "x86_64-linux";
	      config = {
		allowUnfree = true;
	      };
	    };
	  in
	  {
	    homeConfigurations.ldematteis = inputs.home-manager.lib.homeManagerConfiguration {
	      inherit pkgs;
	      extraSpecialArgs = { inherit inputs; };
	      modules = [ ./home.nix ];
	    };
	  };
    };

}
