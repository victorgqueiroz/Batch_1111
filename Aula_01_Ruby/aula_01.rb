# puts "Bom dia, qual o seu nome?"
# user_name = gets.chomp

# puts "Que belo nome, " + user_name


# tries = 0
# #escolho um número aleatório
# rand_number = 123
# #peço para o usuário adivinhar

# puts "Qual o número aleatório?"

# tries += 1 # é iegual a tries = tries + 1

# puts "você levou #{tries} tentativas para acertar"

####### Methods #########
require 'date'


# puts "Qual o seu nome?"
# name = gets.chomp
# puts "O dia de amanhã é #{Date.today + 1 }"
# puts "O dia de hoje é #{Date.today}"
# puts "O seu nome é #{name}"

def tomorrow
     return Date.today + 1
end

def full_name(first_name, last_name)
    first_name.capitalize + " " + last_name.capitalize
end

puts "Qual o seu primeiro nome?"
first = gets.chomp

puts "Qual o seu último nome?"
last = gets.chomp

user_full_name = full_name(first, last)

puts "Olá, #{user_full_name}"
puts "Olá. o seu nome tem #{user_full_name.length - 1} letras"
puts "Amanhã é #{tomorrow}"

puts "Teste do push"
