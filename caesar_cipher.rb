def caesar_cipher(original_text, num_shift)
  arr = original_text.split("")
  index = 0
  converted_text = ""
  while index < arr.size
    char_to_convert = arr[index]
    if char_to_convert.match?(/[A-Z]/)
      converted_text += ("A".ord + (char_to_convert.ord - "A".ord + num_shift) % 26).chr
    elsif char_to_convert.match?(/[a-z]/)
      converted_text += ("a".ord + (char_to_convert.ord - "a".ord + num_shift) % 26).chr
    else
      converted_text += char_to_convert
    end
    index += 1
  end
  return converted_text
end

puts caesar_cipher("What a string!", 5)
