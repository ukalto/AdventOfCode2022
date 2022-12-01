cals = []
File.read("Day01.txt").split("\n\n").each{ |line|
    cals.push(line.split.map(&:to_i).sum)
}

p cals.max
p cals.max(3).sum