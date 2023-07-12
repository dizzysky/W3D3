
#recursive

def range(start,endd)

    return [] if start == endd


    [start] + range(start+1, endd)
end


#iterative


def range_i(start,endd)
    nums = []
    (start...endd).each do |i|

        nums << i
    end

    nums
end
        


p range_i(1,5)