
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



def fibonacci(n)
return [] if n == 0
return [0] if n == 1
return [0,1] if n == 2 


prev = fibonacci(n-1) 

prev << prev[-2] + prev[-1]


end


# p fibonacci(0) # => []
# p fibonacci(1) # => [0]
# p fibonacci(2) # => [0,1]
# p fibonacci(3) # => [0,1,1] => all_fibs(2) << all_fibs(2)[-2] + all_fibs(2)[-1] => 
# p fibonacci(4) # => [0,1,1,2] => all_fibs(3) => [0,1,1] << 2 => [0,1,1,2]
# p fibonacci(5) # => [0,1,1,2,3]
# p fibonacci(6) # => [0,1,1,2,3,5]


def fib_it(n)

    return [] if n == 0
    return [0] if n == 1
    return [0,1] if n == 2

    result = [0,1]


    (n-2).times do 
        result << result[-2] + result[-1]
    end

    result 
end


# p fib_it(0)

# p fib_it(3)

# p fib_it(6)




def bsearch(arr, target) 

    mid_idx = arr.length/2 

    return mid_idx if arr[mid_idx] == target
    return nil if arr.length == 1 && arr[0] != target

    if arr[mid_idx] < target
        return nil if  bsearch(arr[mid_idx + 1..-1], target) == nil
        return mid_idx+1  + bsearch(arr[mid_idx + 1..-1], target)
        
    else
        return bsearch(arr[0...mid_idx], target)
    end
end

# def bsearch(arr, target)
#     return nil if arr.empty?
    
#     mid_idx = arr.length / 2 

#     return mid_idx if arr[mid_idx] == target

#     if arr[mid_idx] < target
#         sub_answer = bsearch(arr[mid_idx + 1..-1], target)
#         return nil if sub_answer.nil?
#         return mid_idx + 1 + sub_answer
#     else
#         sub_answer = bsearch(arr[0...mid_idx], target)
#         return sub_answer
#     end
# end


p bsearch([1, 2, 3], 1) # => 0
p bsearch([2, 3, 4, 5], 3) # => 1
p bsearch([2, 4, 6, 8, 10], 6) # => 2
p bsearch([1, 3, 4, 5, 9], 5) # => 3
p bsearch([1, 2, 3, 4, 5, 6], 6) # => 5
p bsearch([1, 2, 3, 4, 5, 6], 0) # => nil
p bsearch([1, 2, 3, 4, 5, 7], 6) # => nil













