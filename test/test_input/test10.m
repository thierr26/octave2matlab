## Copyright (C) 2017 Thierry Rascle <thierr26@free.fr>
## MIT license. Please refer to the LICENSE file.

## -*- texinfo -*-
## @deftypefn {Function File} test10
##
## Useless function.  Written only to test script octaveh2matlabh. Returns a
## cell array of strings.
##
## @end deftypefn

## Author: Thierry Rascle <thierr26@free.fr>

function ret = test10

    ret = {'\1', '\x41', '\101'; '\4', sprintf('\x41'), sprintf('\101')};

endfunction
