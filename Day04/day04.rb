input = File.read("Day04.txt").lines.map{|l| l.split(/[\s,-]/).map(&:to_i)}
p input.map{|n| (n[0] >= n[2] and n[1] <= n[3]) or (n[2] >= n[0] and n[3] <= n[1])}.count(true)
p input.map{|n| n[0] <= n[3] and n[1] >= n[2]}.count(true)
