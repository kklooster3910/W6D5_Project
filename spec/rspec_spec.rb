require 'rspec'
require 'byebug'

describe Array do
    
    describe "#my_uniq" do
        subject(:array) { [1, 1, 5, 4, 3, 3] }
    
        let(:uniq_array) { array.dup.my_uniq }
        # let(:uniq_array) { [1, 5, 4, 3] }
        
        it "returns an array" do
            # subject(:array) { [] }
            expect(array.my_uniq).to be_a(Array)
        end

        it "removes duplicates from an array" do
            array.each do |item|
                # debugger
                expect(uniq_array.count(item)).to eq(1)
            end
        end

        it "returns the my_uniq elements in the order they first appeared" do
            expect {array.my_uniq}.to_not change {array}
            # expect(array.my_uniq).to_not change { array }
        end

    end

    describe "#two_sum" do 

        subject(:array) { [-1, 0, 2, -2, 1] }
        let(:ret_arr) { [ [0, 4], [2, 3] ] }
        let(:ret_arr2) { [0, -1, -1, -2, 2] }
    
        it "returns an Array" do
            expect(array.two_sum).to be_a(Array)
        end

        it "returns an array with the indices in correct order of how the elements appeared" do
            expect(array.two_sum).to eq(ret_arr)
        end

        it "returns pairs of indices that sum to 0" do
            r = [ [3, 4] ]
            expect(ret_arr2.two_sum).to eq(r)
        end

    end

    describe "#my_transpose" do
        subject(:array) { [
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8]
        ] }

        let(:transposed) {[
        [0, 3, 6],
        [1, 4, 7],
        [2, 5, 8]
        ]}

        it "returns an Array" do
            expect(array.my_transpose).to be_a(Array)
        end

        it "returns an array where columns become rows" do
            expect(array.my_transpose).to eq(transposed)
        end
    end

    describe "#stock_picker" do
        subject(:prices) { [1, 2, 5, 8, 3] }
        let(:prices2) { [12, 10, 8, 4, 0] }

        it "returns a pair of indices" do
            expect(prices.stock_picker).to eq([0, 3])
        end

        it "returns the most profitable pair of indices" do
            expect(prices.stock_picker).to eq([0, 3])
        end

     
        context "when no profitable option available" do

            it "returns an empty array" do
                expect(prices2.stock_picker).to eq([])
            end

        end


    end

end

describe TowersofHanoi do

    subject(:piles) { TowersofHanoi.new }
    let(:piles2) { TowersofHanoi.new }
    
    describe "#initialize" do

        it "creates 3 piles of discs" do
            expect(piles).to be_a(TowersofHanoi)
            expect(piles.piles).to be_a(Array)
        end

        it "sets all the discs to one pile correctly" do
            expect(piles2.piles).to eq([ [5,4,3,2,1], [], [] ])
        end

    end

    describe "#move" do
        it "prompts the user to select a pile" do
            expect(piles2.move).to eq(piles2.move.between?(1,3))
        end

        it "prompts user to select pile to place disc" do
        
        end

        
    end

end