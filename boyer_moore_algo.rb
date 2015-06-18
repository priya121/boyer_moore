class BoyerMoore
    def initialize(text,pattern)
        @text = text
        @pattern = pattern
    end

    def matcher
        @m = @pattern.size - 1
        @n = @text.size - 1
        @characters = []
    end     

    def self.prefix
        k = 0
        result = [0]
        1.upto(@m) do |q|
            while (k > 0) && (@pattern[k] != @pattern[q])
                k = result[k-1]
            end
            k += 1 if(@pattern[k] == @pattern[q])
            result[q] = k
        end
        result
    end


    def self.good_suffix(ordered)
        size = ordered.size
        result = []

        reversed = ordered.dup.reverse
        ordered_prefix = prefix(ordered)
        reversed_prefix = prefix(reversed)
        
    end


    def bad_char(@pattern,@m,@characters)
        s = 0
        while s <= (@n - @m)
            j = @m - 1
            while j > 0 && @pattern[j] == @text[s+j]
                j = j - 1
            end
            if j < 0
                s += (s+ @m < @n) - @m - (@characters[@text[s + @m]] 
                                          puts "pattern occurs at #{s}" 
            end
        end
