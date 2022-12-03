input = File.read("Day03.txt").split("\n")

letter_sum_1 = 0
input.each{ |line|
    contain = ""
    line[0, line.length/2].split('').each{ |letter|
        if line[line.length/2, line.length-1].include?(letter)
            if not contain.include?(letter)
                if letter.match /[[:upper:]]/
                    letter_sum_1 += letter.ord - 38
                else
                    letter_sum_1 += letter.ord - 96
                end
                contain += letter
            end   
        end
    }
}
p letter_sum_1

letter_sum_2 = 0
input.each_slice(3){ |f,s,t|
    contain = ""
    f.split("").each{ |letter|
        if s.include?(letter) and t.include?(letter)
            if not contain.include?(letter)
                if letter.match /[[:upper:]]/
                    letter_sum_2 += letter.ord - 38
                else
                    letter_sum_2 += letter.ord - 96
                end
                contain += letter
            end   
        end
    }
}
p letter_sum_2