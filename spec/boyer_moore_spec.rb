require "boyer_moore"

describe BoyerMoore do 
    it "find the index of an element in a string" do
        expect(BoyerMoore.new.index_character('a','aabb')).to eq(1)
    end

    it "finds the last index of a character in a string" do 
        expect(BoyerMoore.new.index_character('a','bbbaba')).to eq(5)
    end

    it"returns an index of -1 for a non-existing element" do
    expect(BoyerMoore.new.index_character('d','aaab')).to eq(nil)
    end

    it "returns the index if no matches" do
        expect(BoyerMoore.new.shift('ab','ccab')).to eq(2)
        expect(BoyerMoore.new.shift('ab','ccabcd')).to eq(2)
    end

    it "returns the index if matches" do 
        expect(BoyerMoore.new.shift('ab','bbbabbc')).to eq(1)
    end
    
    it "returns the index if a match is found" do 
        expect(BoyerMoore.new.bad_char('ab','bbbabbc')).to eq(3)
    end
end
