
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
        


# p range_i(1,5)

def exp_rec1(b, n)
    return 1 if n == 0
    return b if n == 1

    b * exp_rec1(b,n-1)
end

def exp_rec2(b,n)
    return 1 if n == 0
    return b if n == 1

    if n % 2 == 0
        return exp_rec2(b, n/2) ** 2
    else
        return b * (exp_rec2(b, (n-1)/2) ** 2)
    end
end

# p exp(3,1)
# p exp(3,2)
# p exp(3,3)
# p exp(3,4)
# p exp(3,5)

def deep_dupe(arr)
    result = []
    
    arr.each do |el|
        if !el.is_a?(Array)
            result << el
        else
            result << deep_dupe(el)
        end
    end
    result
end

# arr = [[1,2,3],[4,5,6]]
# arr1 = [1,[2],[3,[4]]]
# arr1_copy = deep_dupe(arr1)
# p arr1_copy
# arr1_copy[1] << 8
# p arr1_copy
# p arr1








