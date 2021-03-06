function [Loc, Mag] = eLocator(S)
    for k = 2:-1:1
        T = zeros(k, k);
        for i = 1:k
            for j = 1:k
                T(i, j) = S(i+j-1);
            end
        end
        B = zeros(k, 1);
        for j = 1:2
            B(j) = S(k+j);
        end
        try
            B = LSolve(T, B);
        catch
            continue
        end
        break
    end
    Loc = [transpose(B) 1];
    [~, Mag] = Mod(polyMult(S(4:-1:1), Loc), [1 0 0 0 0]);
end

