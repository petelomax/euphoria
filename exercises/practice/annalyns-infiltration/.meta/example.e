
// A fast attack can only occur when the knight is sleeping.
global function can_fast_attack(bool knight_is_awake)
    return not knight_is_awake
end function

// spy can only occur if at least one of the characters is awake.
global function can_spy(bool knight_is_awake, archer_is_awake, prisoner_is_awake)
    return knight_is_awake or archer_is_awake or prisoner_is_awake
end function

// a prisoner can only be signalled if they are awake and the archer is sleeping.
global function can_signal_prisoner(bool archer_is_awake, prisoner_is_awake)
    return prisoner_is_awake and not archer_is_awake
end function

// a prisoner can only be freed if they are awake and the other 2 characters are asleep
// or if Annalyn's pet dog is with her and the archer is sleeping.
global function can_free_prisoner(bool knight_is_awake, archer_is_awake, prisoner_is_awake, dog_is_present)
    return not archer_is_awake and (dog_is_present or (not knight_is_awake and prisoner_is_awake))
end function
