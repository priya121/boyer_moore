class BoyerMoore
    def prefix(string)
        k = 0
        result = [0]
        1.upto(string.length - 1) do |q|
            while (k > 0) && string[k] != string[q]
                k = result[k - 1]
            end
            k += 1 if (string[k] == string[q]
                       result[q] = k
        end
        result
    end
end

    def bad_character(string)
        result = {}
        0.upto(string.length - 1) do |i|
            result[string[i]] = i
        end
        result
    end

    def good_suffix(normal)
        normal.size
        result = []
        
        result = normal.dup.reverse
        prefix_normal = prefix(normal)
        prefix_reversed = prefix(reversed)

        0.upto(size) do |i|
            result[i] = normal.size - prefix_normal[normal.size - 1]
        end

        0.upto(normal.size - 1) do |i|
            j = size - prefix_reversed[i]
            k = i - prefix_reversed[i] + 1
            result[j] = k if result[j] > k
        end
        result
    end

def find(text,pattern)
    s = 0
    while s <= (text.size - pattern.size)
        j = pattern.size
        while (j > 0) &&       
        end
    end
