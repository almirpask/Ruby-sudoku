matrix = [
  [[],7,[],2,[],3,[],9,[]],
  [9,[],[],[],[],[],[],[],8],
  [[],[],[],4,[],5,[],[],[]],
  [5,[],9,[],[],[],8,[],4],
  [[],[],[],[],[],[],[],[],[]],
  [4,[],2,[],[],[],7,[],5],
  [[],[],[],5,[],6,[],[],[]],
  [1,[],[],[],[],[],[],[],2],
  [[],6,[],7,[],8,[],3,[]],
]

options = [1,2,3,4,5,6,7,8,9]

matrix.each_with_index do |(a, b, c, d, e, f, g, h, i), index|
  if index != 0 && index % 3 == 0
    puts "=======================" 
  else
    puts "_______________________" 
  end  
  puts "||#{a}|#{b}|#{c}||#{d}|#{e}|#{f}||#{g}|#{h}|#{i}||"
  puts "_______________________" if index == 8  
end

matrix.each_with_index do |array, array_index|
  matrix_validation = []
  array.each_with_index do |position, position_index|
    if position.class == Array
      for x in 0..8 do
        unless x == position_index
          unless array[x].class == Array
            matrix_validation << array[x]
          end
        end
      end
      for y in 0..8 do
        unless y == array_index
          unless matrix[y][position_index].class == Array
            matrix_validation << matrix[y][position_index]
          end
        end        
      end
      
      matrix[array_index][position_index] << options.reject {|w| matrix_validation.uniq.include? w}
      matrix_validation = []
    end
  end
  
end