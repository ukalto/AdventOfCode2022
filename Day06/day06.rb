input = File.read("Day06.txt").split("")
input.each_with_index do |c, i|
    vals = [c, input[i+1], input[i+2], input[i+3]]
    if 4 == vals.uniq.length
        p i+4 
        break
    end
end

input.each_with_index do |c, i|
    vals = []
    14.times do |ix|
        vals.push(input[i+ix])
    end
    if 14 == vals.uniq.length
        p i+14 
        break
    end
end