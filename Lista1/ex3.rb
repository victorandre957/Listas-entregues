def fizzbuzz(n)
        0.upto(n).each do |x|
            case
            when x == 0
                p 0
            when x%3 == 0 && x%5 == 0 
                puts "fizzbuzz"
            when x % 5 == 0 
                puts "buzz"
            when x % 3 == 0 
                puts "fizz"
            else
                p x
            end
        end
    end
puts 'Digite um valor máximo para fizzbuzz'
fizzbuzz(gets.to_i)