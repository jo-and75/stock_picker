def stockpicker(array)      
  difference = {}
  min_value = [] 
  min_key= [] 
  result = array.each_with_index do |element,index| 
        array.each_with_index do |i,num| 
        if index < num 
          difference["#{index}, #{num}"] = element - i                 
        end  
      end
  end  
  min_value = difference.min_by{|key,value| value}
  min_key.push(min_value[0])
  final_result = min_key.map { |str| str.split(', ').map(&:to_i) }.flatten 
  final_result
end  

stockpicker([17,5,2,7,8,9,0,16,1]) #[6,7] 
stockpicker([17,3,6,9,15,8,6,1,10]) #[1,4]