def anagram(s)
    if s.size.odd?
        -1
    else 
    
        s1 = (s[0, s.size / 2])
        s2 = (s[s.size / 2, s.size]).split(//)
    
        s1.each_char do |letter|
            s2.each_with_index do |ele, index|
                if letter == ele
                    s2.delete_at(index)
                    break
                end
            end
            
        end
        s2.size
    end
     
end