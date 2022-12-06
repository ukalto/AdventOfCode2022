input = File.read("Day05.txt").split("\n\n")
stack = input[0].split("\n")
instructions = input[1].split("\n")
stacks_count = stack[-1].split(" ").last.to_i
stacks = Array.new(stacks_count)
stack.pop

def divide(line, parts)
    arr = []
    parts.times do |i|
        from = i*(line.length/parts+1)
        to = (i+1)*(line.length/parts+1)-1
        arr.push(line.split("")[from..to].join(""))
    end
    return arr
end

stack.each{ |line|
    line = divide(line, stacks_count)
    line.each_with_index do |val, i|
        val = val.strip
        if not val.empty?
            if stacks[i].nil?
                stacks[i] = [val[1]]
            else
                stacks[i].push(val[1])
            end
        end
    end
}

stacks_2 = Marshal.load(Marshal.dump(stacks))

instructions.map{ |l| l.scan(/\d+/).map(&:to_i)}.each{ |move, from, to|
    stack_to_load = []
    move.times do
        stacks[to-1].unshift(stacks[from-1].shift)
        stack_to_load.push(stacks_2[from-1].shift)
    end
    stack_to_load.reverse.each{ |l|
        stacks_2[to-1].unshift(l)
    }
}

p stacks.map{ |x| x.first}.join
p stacks_2.map{ |x| x.first}.join