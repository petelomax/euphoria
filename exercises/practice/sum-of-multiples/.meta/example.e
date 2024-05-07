global function sum_of_multiples(sequence f, integer lim)
    integer res = 0
    for n=1 to lim-1 do
        for k in f do 
            if k!=0 and rmdr(n,k)=0 then
                res += n
                exit
            end if
        end for
    end for
    return res
end function

