price_to_find = rand(1..5)
choice = nil

# while choice != price_to_find
# puts "Qual é o preço? (Escolha entre 1 e 5)"
# choice = gets.chomp.to_i
# end

# until choice == price_to_find
#   puts "Qual é o preço? (Escolha entre 1 e 5)"
#   choice = gets.chomp.to_i
# end

loop do
    puts "Qual é o preço? (Escolha entre 1 e 5)"
    choice = gets.chomp.to_i
    break if choice == price_to_find
end

puts "Você acertou! O preço era #{price_to_find}"
