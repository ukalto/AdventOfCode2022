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
for i in (0...input.length/3)
    contain = ""
    input[i*3].split("").each{ |letter|
        if input[(i*3)+1].include?(letter) and input[(i*3)+2].include?(letter)
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
end
p letter_sum_2