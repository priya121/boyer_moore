require "boyer_moore_algo"

describe BoyerMoore do 
    it "searches for the index of a pattern" do
    expect(BoyerMoore.new('ab','b').last_character('b')).to include('Pattern Found')
    end
end
