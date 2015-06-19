class BoyerMoore
    def initialize(text,pattern)
        @text = text
        @pattern = pattern
    end


    def bad_char(@pattern,@m,@characters)
        @m = @pattern.size - 1
        @n = @text.size - 1
        @characters = []
        s = 0
        while s <= (@n - @m)
            j = @m - 1
            while j >= 0 && @pattern[j] == @text[s+j]
                j = j - 1
            end
            if j < 0
                s += (s + @m < @n) - @m - (@characters[@text[s + @m]] 
                "pattern occurs at #{s}" 
            end
        end
