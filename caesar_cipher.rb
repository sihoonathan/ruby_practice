def caesar_cipher(original_text, num_shift)
  arr = original_text.split("")
  i = 0
  converted_text = ""
  while i < arr.size
    char_to_convert = arr[i]
    if char_to_convert.match?(/[A-Z]/)
      converted_text += ("A".ord + (char_to_convert.ord - "A".ord + num_shift) % 26).chr
    elsif char_to_convert.match?(/[a-z]/)
      converted_text += ("a".ord + (char_to_convert.ord - "a".ord + num_shift) % 26).chr
    else
      converted_text += char_to_convert
    end
    i += 1
  end
  return converted_text
end

puts caesar_cipher("What a string!", 5)
