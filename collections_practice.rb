def sort_array_asc(array)
  array.sort
end

def sort_array_desc(array)
  array.sort {|a, b| -1 * (a<=>b)}
end

def sort_array_char_count(array)
  array.sort {|a, b| a.length <=> b.length}
end

def swap_elements_from_to(array, from, to)
  temp = array[from]
  array[from] = array[to]
  array[to] = temp
  array
end

def swap_elements(array)
  swap_elements_from_to(array, 1,2)
end

def reverse_array(array)
  reverse =[]
  i = array.length - 1
  while i >= 0
  reverse << array[i]
  i -= 1
    end
    reverse
end

def kesha_maker(array)
  bling = []
  array.each do |word|
    word_array = word.split ""
    word_array[2] = "$"
    bling << word_array.join
  end
  bling
end

def find_a(words, begins_with)
  words.lazy.grep(/\A#{begins_with}/).first
end

