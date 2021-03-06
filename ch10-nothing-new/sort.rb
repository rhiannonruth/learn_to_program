def sort arr
  recursive_sort(arr,[])
end

def recursive_sort(unsorted,sorted)
  return sorted if unsorted.empty?
  to_test = unsorted.pop
  smallest = true
  unsorted.each {|x| smallest = false if to_test > x}
  if smallest
    sorted << to_test
  else
    unsorted.unshift(to_test)
  end
  recursive_sort(unsorted,sorted)
end
