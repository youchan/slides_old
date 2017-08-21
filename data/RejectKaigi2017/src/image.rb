require_relative './font'

bitmap = Font::DATA.map do |l|
  l.chars.each_slice(8).map {|chars|
    chars.reduce(0) do |byte, c|
      byte <<= 1
      byte | (c == '.' ? 1 : 0)
    end
  }.pack('C*')
end

count = 0
bitmap.each do |line|
  line.bytes do |byte|
    8.times do |i|
      print((byte & (1 << (7 - i))) > 0 ? '*' : ' ')
      count += 1 if (byte & (1 << (7 - i))) > 0
    end
  end
  puts
end

p [Marshal.dump(bitmap)].pack('m').gsub("\n", '')
p count
