require 'pry'
def sort_array_asc(arr)
  arr.sort
end

def sort_array_desc(arr)
  arr.sort{|a, b| b <=> a}
end

def sort_array_char_count(arr)
  arr.sort{|a, b| a.length <=> b.length}
end

def swap_elements(arr, source_index, destination_index)
  arr.map.with_index do |element, index|
    #binding.pry
    if index == source_index
      arr[destination_index]
    elsif index == destination_index
      arr[source_index]
    else
      element
    end
  end
end

def reverse_array(arr)
  arr.sort_by do |element|
    -arr.index(element)
  end
end

def kesha_maker(arr)
  kesha_array = []
  arr.each do |string|
    string[2] = '$'
    kesha_array.push(string)
  end
end

def find_a(arr)
  arr.select {|element| element.start_with?("a")}
end

def sum_array(arr)
  arr.inject{|sum, n| sum + n}
end

def add_s(arr)
  arr.map.with_index do |element, index|
    if index == 1
      element
    else
      element + "s"
    end
  end
end
