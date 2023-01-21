puts "cara ou coroa?"

choice = gets.chomp

coin = %w[cara coroa].sample

result = choice == coin ? "ganhou" : "perdeu"

puts "você #{result}. A moeda caiu com #{coin}"

# if choice == coin

# result = “ganhou”

# else

# result = perdeu

# end
