def oxford_comma(array)
    new_str = ""
    if array.length() == 1
        new_str << array[0]
    elsif  array.length() == 2   
        array.each_with_index do |str, index|
            if index == 0
                new_str = str
            else
                new_str = new_str + " and " + str  
            end      
        end    
    else
        array.each_with_index do |str, index|

            if index == array.length() - 1
               
                new_str = new_str + ", and " + str               
            elsif index == 0
               
                new_str = str 
            else
              
                new_str = new_str + ", " + str
            end    
        end
    end   
   return  new_str         
end

# oxford_comma(["kiwi", "durian", "melon"])
#oxford_comma(["kiwi", "durian"])