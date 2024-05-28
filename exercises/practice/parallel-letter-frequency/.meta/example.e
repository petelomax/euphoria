without javascript_semantics -- multithreading

include map.e

integer fc = new_dict(),
        cs = init_cs()

local function updatefc(integer ch, n, object /*user_data*/)
    setd(ch,getdd(ch,0,fc)+n,fc)
    return 1
end function

local procedure frequency(string txt)
    integer pfc = new_dict() -- private/thread-safe map
    for ch in lower(txt) do
        if ch>='a' and ch<='z' then -- not unicode, yet...
            setd(ch,getdd(ch,0,pfc)+1,pfc)
        end if
    end for
    enter_cs(cs)
    traverse_dict(updatefc,0,pfc)
    leave_cs(cs)
    destroy_dict(pfc)
end procedure

global function parallel_frequency(sequence txts)
    sequence threads = {}
    for t in txts do
        threads &= create_thread(frequency,{t})
    end for
    wait_thread(threads)
    sequence res = pairs(fc)
    destroy_dict(fc,justclear:=true)
    return res
end function

