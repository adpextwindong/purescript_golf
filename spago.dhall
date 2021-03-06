{ name = "purescript_golf"
, dependencies = [ "console", "effect", "maybe", "psci-support", "strings" ]
, packages = ./packages.dhall
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
}
