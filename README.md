# octave2matlab


## General information

This repository contains shell scripts meant to help converting [GNU
Octave](https://www.gnu.org/software/octave) function files (M-files) to
[Matlab](https://www.mathworks.com/products/matlab.html) function files.

Please be aware that they are not full fledged Octave to Matlab translators
and the output files won't be valid Matlab function files if the input files
make use of Octave specific language features other than:

* Pound sign ("#") used as comment leader on lines that contain only a comment.

* "end_try_catch", "endfor", "endfunction", "endif", "endswitch", "endwhile",
  "endclassdef", "endproperties" and "endmethods" used to close the various
  control constructs.

Their primary purpose is to turn Octave style M-file headers (with copyright
sections and Texinfo help sections) into Matlab style headers.

Please read the documentations below for details.

If you use the scripts with the `-k` or `--makeinfo-err` option, you may want
to "grep out" the warnings about entries being outside of any node.  You can
include a `grep` command in aliases, see this file for an example:

https://github.com/thierr26/thierr26_bash_config/blob/master/for_a_user/.bashrc_octave2matlab

The scripts have been validated on a [Debian GNU/Linux](https://www.debian.org)
system, with dash as `/bin/sh`.  Some testing has proven that they do **not** work
properly with bash as `/bin/sh`.


## Documentation for script octaveh2matlabh

> Usage:
>
>     octaveh2matlabh [OPTIONS] OCT_M_FILE [DEST_DIR]
>
>     octaveh2matlabh -h|--help
>
> Description:
>
>     Turn an Octave style function or classdef file (M-file) to a Matlab style file.
>
>     The first argument is the Octave style function or classdef file.  If it is -, then input is read from standard input.
>
>     The second argument is the directory in which octaveh2matlabh writes the Matlab style file.  If it is omitted, then the Matlab style file is written
>     to the current working directory.
>
>     The primary action of octaveh2matlabh is to turn an Octave style M-file header (with a copyright section and then a Texinfo help section) into a
>     Matlab style header (with a plain text help section and then a copyright section).
>
>     Note that if no Texinfo help section is found in the Octave style function file, then in the Matlab style file the copyright section is placed at
>     the end of the file.
>
>     The secondary action of octaveh2matlabh is to slighly modify the body of the function.  The modifications do not change the functional behavior of
>     the function.  The modifications are as follows:
>
>         - On the lines that contain only the word "end_try_catch", this word is replaced with "end".  Leading blanks are preserved, trailing blanks
>         are discarded.
>
>         - Ditto for the words "endfor", "endfunction", "endif", "endswitch", "endwhile", "endclassdef", "endproperties" and "endmethods".
>
>         - On the lines that contain only a comment with one or more pound signs ("#") used as comment leaders, the pound signs are substituted with a
>         single percent sign ("%").
>
>     Please be aware that the output file will not be a valid Matlab function file if the input file makes use of other Octave specific language features.
>
>     One of the texi2any or makeinfo commands is used to process the Texinfo help section and produce a plain text help section.  texi2any or makeinfo
>     may write warning or error messages to standard error.  By default, these messages are discarded.  If the -k or --makeinfo-err option is used,
>     then the messages are not discarded.
>
>     The present script needs to know the path to the file containing the Octave documentation specific Texinfo macros.  By default, this path is obtained
>     by making Octave evaluate its texi_macros_file function and echo the result.  Alternatively, the user can give the path to the file on the command
>     line by using the -m or --texinfo-macros-file option.
>
>     If the -t or --makeinfo-input option is used, then the input to makeinfo is echoed to standard output.
>
>     If the -f or --force option is used, then the output file is overwritten without confirmation.
>
> Options:
>
>     -m FILE, --texinfo-macros-file FILE
>         use FILE as Texinfo macros file.
>
>     -k, --makeinfo-err
>         Do not discard makeinfo warning and error messages.
>
>     -t, --makeinfo-input
>         Write the makeinfo input to standard output.
>
>     -f, --force
>         Overwrite output file without confirmation.
>
>     -h, --help
>         Display this documentation and exit.


## Documentation for script octaveh2matlabh_recursive

> Usage:
>
>     octaveh2matlabh_recursive [OPTIONS] SOURCE_DIR [DEST_DIR]
>
>     octaveh2matlabh_recursive -h|--help
>
> Description:
>
>     Calls octaveh2matlabh for every file with ".m" extension in source directory and its subdirectories, and cp for the other files.  The subdirectory
>     structure is duplicated in destination directory.  Note that files and directories having a name starting with "." are ignored.
>
>     One of the texi2any or makeinfo commands is used to process the Texinfo help section in the octaveh2matlabh input files and produce a plain text
>     help section.  texi2any or makeinfo may write warning or error messages to standard error.  By default, these messages are discarded.  If the -k or
>     --makeinfo-err option is used, then the messages are not discarded.
>
>     If the -f or --force option is used, then the output files are overwritten without confirmation.
>
>     If the -q or --quiet option is used, then the processed files are not listed on standard output.
>
> Options:
>
>     -k, --makeinfo-err
>         Do not discard makeinfo warning and error messages.
>
>     -f, --force
>         Overwrite output files without confirmation.
>
>     -q, --quiet
>         Do not list files on standard output.
>
>     -h, --help
>         Display this documentation and exit.
>
> See also:
>
>     octaveh2matlabh


## Test program

The test directory contains the `test_octaveh2matlabh` script which is a test
program for the scripts mentioned above. It is supposed to terminate with exit
status 0 and a "Test passed." line written to standard output. A non zero exit
status or a "Test failed." line written to standard output indicates that
scripts `octaveh2matlabh` and `octaveh2matlabh_recursive` do not work properly.


## Author

[Thierry Rascle](mailto:thierr26@free.fr)


## License

This project is licensed under the [MIT License](https://mit-license.org). For
more information, please refer to the [LICENSE](LICENSE) file.
