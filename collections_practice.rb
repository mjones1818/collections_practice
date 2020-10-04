def sort_array_asc (array)
  array.sort
end

def sort_array_desc (array)
  array.sort {|a,b| b<=>a}
end

def sort_array_char_count (array)
  array.sort {|a,b| a.length <=> b.length }
end

def swap_elements (array)
  second_element = array[1]
  third_element = array[2]
  array[1] = third_element
  array[2] = second_element
  array
end

def reverse_array (array)
  reversed_array = []
  array.each_with_index do |num,index|
    reversed_array.unshift(num)
  end
  reversed_array
end

def kesha_maker (array)
  result = []
  array.each do |string|
    string[2] = "$"
    result <<string
  end
  result
end

def find_a (array)
  array.select do |string|
    string.start_with?("a")
  end
end

def sum_array (array)
  array.inject {|sum, n| sum + n}
end

def add_s (array)
  array.each_with_index.collect do |string, index|
    if index == 1 
      next
    end
    string << "s"
  end
  array
end