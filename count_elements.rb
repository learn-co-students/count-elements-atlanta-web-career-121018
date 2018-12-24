require'pry'

def count_elements(*array)
    # result = array.flatten.each_with_object(Hash.new(0)) { |word,counts| counts[word] += 1 }

    ####====OR====####

    array.flatten.group_by(&:itself).map { |k,v| [k, v.count] }.to_h

    # array.flatten.group_by(&:itself) # => {"cat"=>["cat"], "dog"=>["dog"], "fish"=>["fish", "fish"]}
    # array.map { |k,v| [k, v.count] } # => [["cat", 1], ["dog", 1], ["fish", 2]]
    # array.to_h # => {"cat"=>1, "dog"=>1, "fish"=>2}
end
