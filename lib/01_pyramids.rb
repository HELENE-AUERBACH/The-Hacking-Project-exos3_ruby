def half_diamond(number)
  # Affichage de la moitié supérieure d'un losange
  # Cette moitié a une hauteur de number lignes
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
end

def second_half_diamond(number)
  # Affichage de la moitié inférieure d'un losange
  # Cette moitié a une hauteur de number lignes
  j = 2 * number + 1
  number.times do |i|
    i += 1
    i.times do
      print " "
    end
    j -= 2
    j.times do
      print "#"
    end
    puts ""
  end
end

def ask_number(must_be_odd)
  print "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?" + (must_be_odd ? " (choisis un nombre impair)" : "") + "\n> "
  number = gets.chomp.to_i
  return number
end

def input_ok?(number, must_be_odd = false)
  # Contrôle de la saisie de l'utilisateur
  result = false
  if must_be_odd && (number % 2 == 0)
    puts "Le nombre d'étages doit être impair!"
  elsif number.between?(1, 25)
    result = true
  else
    puts "Le nombre d'étages doit être compris entre 1 et 25!"
  end
  return result
end

def full_pyramid(must_be_odd = false)
  input_number = ask_number(must_be_odd)
  if input_ok?(input_number, must_be_odd)
    puts "Voici la pyramide :"
    # Préparation de l'argument pour l'appel de la méthode d'affichage "half_diamond"
    if must_be_odd
      number = input_number / 2 + 1
    else
      # L'utilisateur a choisi d'afficher une "Pyramide de Gizeh"
      number = input_number
    end
    half_diamond(number)
  else
    input_number = -1
  end
  return input_number  
end

def wtf_pyramid
  input_number = full_pyramid(true)
  if input_number != -1
    second_half_diamond(input_number / 2)
  end
end

print "Désirez-vous une \"Pyramide de Gizeh\" ? (O/N)\n> "
if gets.chomp == "O"
  full_pyramid
else
  wtf_pyramid
end
