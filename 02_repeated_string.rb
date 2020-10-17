def repeatedString(s, n)
    remainder = n % s.size
    a_times_string = (s.count "a") * (n / s.size)
    a_remainder = (s[0,remainder]).count "a" 
    a_times_string + a_remainder
end