def caesar_cipher(message, shift)
  cryptic_result = ""
  message.each_char do |char|
    # Check and modify each character
    if char.ord.between?(65, 90) || char.ord.between?(97, 122)
      # Logic for encryption as defined by 'shift' factor
      logic = char.ord + shift
      # 
      logic -= 26 if logic > 122 && char.ord > 90 || logic > 91 && char.ord < 91
      cryptic_result += logic.chr
    else
      cryptic_result += char
    end
  end
  return cryptic_result
end

puts "Write your message here:"
message = gets.chomp

puts "Define your shift factor in numbers:"
shift = gets.chomp.to_i

puts caesar_cipher(message, shift)