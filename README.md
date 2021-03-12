# mkproj

A simple shell script to set up a programming environment for various languages.

### Usage

`mkproj <project_name> <language> [base_directory]`

`<project_name>` is the _required_ name of the project. This name is used to name the project directory as well. 

`<language>` is the _required_ programming language of the project. This is one of the strings defined in the `Flag` column of the table below. For example, to generate a `C` project, pass in `c` _or_ `C` as this parameter.

`[base_directory]` is the _optional_ base directory to create the project directory in so that all the project files will be created in `<base_directory>/<project_name>`. If this is not specified, the current working directory is used, otherwise the supplied directory is used. Any supplied directories must already exist and the project directory must not already exist; in other words `<base_directory>` must exist but `<base_directory>/<project_name>` must not exist.

### Installing/Uninstalling

Run `make install`. By default, the installation directory will be `/usr/local/bin` and `make` will require `sudo` privileges. 

You can override the default installation directory by overriding the `INSTALLDIR` variable. e.g. `make install INSTALLDIR=$HOME/bin` will install the script into `$HOME/bin` instead of `/usr/local/bin`.

To uninstall, run 'make uninstall`. If you've modified `INSTALLDIR` during a `make install`, you'll need to supply the modified `INSTALLDIR` on `make uninstall`. eg. `make uninstall INSTALLDIR=$HOME/bin`.

### Supported Languages

| Language | Flag     | Environment Created |
| -------- | -------- | ------------------- |
| `C`      | `[cC]`   | ![c tree](/resources/c/tree.png) |

### Contributing

Create a branch with your changes and raise a PR against `master`. Once review is done and all is well, I'll merge your changes in.
