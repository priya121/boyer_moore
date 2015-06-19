class BoyerMoore

    def maximum(first_number,second_number)
        if first_number > second_number
            return first_number
        else
            return second_number
        end
    end

    def index_character(character,text)
        text.split(//).each_with_index do |element,index|
            if character == element 
                @character_index = index
            end
        end
        #unless text.include? "#{character}"
        #return - 1
        #else
        return @character_index
    end

    def match(character,text)
        text.split(//).each_with_index do |element,index|
            if character == element 
                @character = character
                return @character
            end
        end
    end

    def shift(pattern,text)
        rightmost_pattern_index =  pattern.length - 1
        corresponding_letter = text[rightmost_pattern_index]
        if pattern[rightmost_pattern_index] != corresponding_letter && match(corresponding_letter,pattern) != @character
            return pattern.length
        elsif match(corresponding_letter,pattern) == @character
            return text.index(@character) + rightmost_pattern_index
        end
    end

    def bad_char(pattern,text)
        rightmost_pattern_index =  pattern.length - 1
        corresponding_letter = text[rightmost_pattern_index]
        while shift(pattern,text) <= (text.index(@character) - pattern.length)
        end
    end

end
