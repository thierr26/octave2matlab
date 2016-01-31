function ret = test2
% -- Function File: test2
%
%     Useless function.  Written only to test script octaveh2matlabh.
%     Returns a boolean value.
%

% Author: Thierry Rascle <thierr26@free.fr>

    try

        ret = true;

        for k = 1 : 3
            ret = ~ret;
        end

        while ~ret
            ret = ~ret;
        end

        if rand > 0.5
            n = 1;
        else
            n = 2;
        end

        switch n
            case 1
                ret = ~ret;
        end

    catch
        ret = false;
    end

end
