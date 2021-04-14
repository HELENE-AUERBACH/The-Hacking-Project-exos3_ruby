def half_pyramid
  print "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?\n> "
  number = gets.chomp.to_i
  if number.between?(1, 25)
    puts "Voici la pyramide :"
    number.times do |i|
      j = i + 1
      i = number - i - 1
      i.times do
        print " "
      end
      j.times do
        print "#"
      end
      puts ""
    end
  else
    puts "Le nombre d'étages doit être compris entere 1 et 25!"
  end
end

def full_pyramid
  print "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?\n> "
  number = gets.chomp.to_i
  if number.between?(1, 25)
    puts "Voici la pyramide :"
    number.times do |i|
      k = i
      j = i + 1
      i = number - i - 1
      i.times do
        print " "
      end
      j.times do
        print "#"
      end
      k.times do
        print "#"
      end
      puts ""
    end
  else
    puts "Le nombre d'étages doit être compris entere 1 et 25!"
  end
end

full_pyramid
