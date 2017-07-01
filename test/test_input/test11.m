## Copyright (C) 2017 Thierry Rascle <thierr26@free.fr>
## MIT license. Please refer to the LICENSE file.

## -*- texinfo -*-
## @deftypefn {Function File} test11
##
## Useless function.  Written only to test script octaveh2matlabh. Returns a
## cell array of strings.
##
## @example
## infostr = sprintf('A\nB')
## infostr = sprintf('A\tB')
## infostr = sprintf('A\bB')
## @end example
##
## infostr = sprintf('A\nB')
##
## infostr = sprintf('A\tB')
##
## infostr = sprintf('A\bB')
## @end deftypefn

## Author: Thierry Rascle <thierr26@free.fr>

function ret = test11

    ret = {sprintf('A\nB'), sprintf('A\tB'), sprintf('A\bB'); ...
        'A\nB', 'A\tB', 'A\bB'};

endfunction
