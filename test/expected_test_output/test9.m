function ret = test9(x, y, z)
% -- Function File: test1
%
%     Useless function.  Written only to test script octaveh2matlabh.
%     Returns a boolean value.
%
%     See also: test2.
%

% Copyright (C) 2016 Thierry Rascle <thierr26@free.fr>
% MIT license. Please refer to the LICENSE file.

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
            % Bla.
            case 1
                ret = ~ret;
        end
        fs = '\';
        fprintf('foo\nbar');
        fprintf('foo\tbar');

    catch
        ret = false;
    end

end
