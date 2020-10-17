def even_fib_sum(number)
    fn1 = 1
    fn2 = 1
    sum = 0
    loop do
        fn = fn1 + fn2
        if fn >= number
            return sum
        elsif fn % 2 == 0
            sum += fn
            fn2, fn1 = fn1, fn
        else
            fn2, fn1 = fn1, fn
        end
    end
end