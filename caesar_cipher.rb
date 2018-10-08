def change_char(char, offset)
  cypher_list = ('a'..'z').to_a
  return char unless cypher_list.include?(char.downcase)

  caps = ('A'..'Z').cover?(char)
  index = cypher_list.index(char.downcase) - offset
  index += 26 if index < 0
  index -= 26 if index > 25
  return cypher_list[index].upcase if caps

  cypher_list[index]
end

def encrypt_text(text, offset)
  return '' if text.nil?

  text = text.split('')
  puts text.inspect
  text.each_with_index do |value, key|
    text[key] = change_char(value, offset)
  end
  text.join('')
end
