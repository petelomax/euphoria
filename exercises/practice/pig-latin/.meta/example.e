function any_of(integer ch, string s)
    for c in s do
        if c=ch then return true end if
    end for
    return false
end function

function vowel(integer ch)
    return any_of(ch,"aeiou")
end function

global function sentence(string s)
    sequence words = split(s)
    string res = ""
    for i,w in words do
        if i>1 then res &= " " end if
        if vowel(w[1]) or (any_of(w[1],"xy") and not vowel(w[2])) then
            res &= w
        else
            integer k = 1
            while not any_of(w[k+1],"aeiouy") do k += 1 end while
            if w[k]='q' and w[k+1]='u' then k += 1 end if
            res &= w[k+1..$]
            res &= w[1..k]
        end if
        res &= "ay"
    end for
    return res
end function

