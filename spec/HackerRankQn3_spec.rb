require './HackerRank/Qn3'

describe 'jumpingOnClouds' do
    c = [0,0,1,0,0,0,1,1,0,0]
    #Positive Case
    it "It shows the minimum number of jumps done from starting to end cloud" do
        expect(jumpingOnClouds(c)).to eql(6)
    end
    #Negative Case
    it "It shows the minimum number of jumps done from starting to end cloud" do
        expect(jumpingOnClouds(c)).to eql(9)
    end
end