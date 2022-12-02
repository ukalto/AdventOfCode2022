# A = Rock | B = Paper | C = Scissors
# X = Rock | Y = Paper | Z = Scissors
# 1 = Rock | 2 = Paper | 3 = Scissors
# 0 = Lose | 3 = Draw  | 6 = Win
total_score_1 = 0
File.read("Day02.txt").split("\n").each{ |line|
    case line[0]
    when "A"
        case line[2]
        when "X"
            total_score_1 += 4
        when "Y"
            total_score_1 += 8
        when "Z"
            total_score_1 += 3
        end
    when "B"
        case line[2]
        when "X"
            total_score_1 += 1
        when "Y"
            total_score_1 += 5
        when "Z"
            total_score_1 += 9
        end
    when "C"
        case line[2]
        when "X"
            total_score_1 += 7
        when "Y"
            total_score_1 += 2
        when "Z"
            total_score_1 += 6
        end
    end
}
p total_score_1

# X = Lose | Y = Draw  | Z = Win
# A = Rock | B = Paper | C = Scissors
# 1 = Rock | 2 = Paper | 3 = Scissors
total_score_2 = 0
File.read("Day02.txt").split("\n").each{ |line|
    case line[2]
    when "X"
        case line[0]
        when "A"
            total_score_2 += 3
        when "B"
            total_score_2 += 1
        when "C"
            total_score_2 += 2
        end
    when "Y"
        case line[0]
        when "A"
            total_score_2 += 4
        when "B"
            total_score_2 += 5
        when "C"
            total_score_2 += 6
        end
    when "Z"
        case line[0]
        when "A"
            total_score_2 += 8
        when "B"
            total_score_2 += 9
        when "C"
            total_score_2 += 7
        end
    end
}
p total_score_2