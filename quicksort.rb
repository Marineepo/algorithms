# Quick Sort uses a pivot point to sort
class Array
  def quicksort
    return [] if empty?
    
    #[34,2,1,5,3]
    #[34,2,1,5,3]
    pivot = delete_at(rand(size))
    left, right = partition(&pivot.method(:>))
    
    return *left.quicksort, pivot, *right.quicksort
  end
end

arr = [34,2,1,5,3]
p arr.quicksort






#partition stores 2 values from left and right sides
#what we are returning is a splat, calling quicksort method on itself.
#on the left partition is an array and right an array
