
def ceasar_cypher(string, number)
  alfabeto = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]

  splited_string = string.upcase.split('')
  alfabeto.find_index("B")
  
  new_array = []
  cypred = []

  array = [6, 5, 16, 5]

  splited_string.map { | letter | 
    if (alfabeto.find_index(letter) + number) > 25
      new_array.push((alfabeto.find_index(letter) + number) - 26)
    end
    new_array.push((alfabeto.find_index(letter) + number))
  }

  new_array.map { | number | cypred.push(alfabeto[number]) }

  return cypred.join('')

end

ceasar_cypher("ZOA", 5)
