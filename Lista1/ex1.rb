require 'prime'
def primo?(n)
    if Prime.prime?(n)
        return true
    else
        return false
    end
end
puts 'digite um número para saber se é primo'
p primo?(gets.to_i)