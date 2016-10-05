def paul arr
  misery_index = {
    'kata' => 5,
    'Petes kata' => 10,
    'life' => 0,
    'eating' => 1
  }
  arr.reduce(0) {|sum,val| sum + misery_index[val] }
end
puts paul(['life', 'eating', 'life'])