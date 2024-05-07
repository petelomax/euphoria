global function is_armstrong_number(integer n)
    sequence digits = sprintf("%d",n)
    integer l = length(digits)
    for d in digits do
        n -= power(d-'0',l)
    end for
    return n==0
end function

