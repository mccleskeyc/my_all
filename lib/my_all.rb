require 'pry'

def my_all?(collection)
    i = 0 # setting a counter called i at 0
    block_return_values = [] # declares an empty array
    while i < collection.length # while the counter i is less than the length of the collection...
        block_return_values << yield(collection[i]) # shovels in the return value of the block into this array
        i = i + 1 # set the counter i at the counter + 1 (incrementing)
    end

    if
        block_return_values.include?(false) # if the array includes false as a return value
        false # print false
    else # if the array does not include false as a return value
        true #then print true
    end
end

