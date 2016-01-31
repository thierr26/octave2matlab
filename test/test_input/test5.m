## Copyright (C) 2016 Thierry Rascle <thierr26@free.fr>
## MIT license. Please refer to the LICENSE file.

## -- Function File: test5
##
##     Useless function.  Written only to test script octaveh2matlabh.
##     Returns a boolean value.
##

## Author: Thierry Rascle <thierr26@free.fr>

function ret = test5

    try

        ret = true;

        for k = 1 : 3
            ret = ~ret;
        endfor

        while ~ret
            ret = ~ret;
        endwhile

        if rand > 0.5
            n = 1;
        else
            n = 2;
        endif

        switch n
            case 1
                ret = ~ret;
        endswitch

    catch
        ret = false;
    end_try_catch

endfunction
