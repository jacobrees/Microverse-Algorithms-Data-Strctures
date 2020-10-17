def palindromeIndex(s)
    s_arr = s.split(//)
        if s_arr == s_arr.reverse
            -1
        else
            i = 0
            j = s.size - 1
            while i <= j
                if s_arr[i] != s_arr[j]
                    s_arr.delete_at(i)
                    if s_arr == s_arr.reverse
                        return i
                    else
                        s_arr = s.split(//)
                    end
                    s_arr.delete_at(j)
                    if s_arr == s_arr.reverse
                        return j
                    else
                        s_arr = s.split(//)
                    end
                    i += 1
                    j -= 1
                else
                    i += 1
                    j -= 1
                end
            end
        end
end