band = ["Robert", "Jimmy", "Joe", "John"]
puts '========================================='

for i in 0...band.length
  puts "#{i} - #{band[i].upcase} rocks!"
end

puts '========================================='

#Interators

band.each do |person|
  puts "#{person.upcase} rocks!"
end

puts '========================================='

band.each_with_index do |person, indice|
  puts "#{person} is in position #{indice + 1}"
end

puts '========================================='

new_band = band.map {|person| person.upcase + "XX"}

p new_band

puts '========================================='

band_whithout_j = band.reject {|person| person.start_with? 'J'}

p band_whithout_j

puts '========================================='

n_dont_start_with_j = band.count {|person| person.start_with? 'J'}

p n_dont_start_with_j

puts '========================================='

def rocks (person)
  puts "#{person} rocks!"
end

for person in band
  rocks(person)
end

puts '========================================='

def timer
  puts "I got inside the methor"
  tstart = Time.now
  puts "Started clock! Entering the block!"
  yield
  puts "Left the block! Stopping clock!"
  puts "Hello World! how much to execute a puts?"

  tend = Time.now
  puts "It took #{tend - tstart} ms to execute the code form start to end"
end

# timer do
#   puts "Hello World! how much to execute a puts?"
# end

timer do
  puts "I'm in the block!"
  puts "I'm going to sleep"
  sleep(3)
  puts "i am awake and leaving the block!"
end
