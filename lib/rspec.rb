require 'byebug'
class Array    
    def my_uniq
        arr = self
        uniq = []    
        each { |ele| uniq << ele unless uniq.include?(ele) }
        # debugger
        uniq
        # arr = self.shift
    end

    def two_sum
        pairs = []
        self.each_with_index do |ele, i|
            self.each_with_index do |ele2, i2|
                pairs << [i, i2] if i2 > i && ele + ele2 == 0
            end
        end
        pairs
    end

    def my_transpose
        transposed = Array.new(self.length) { [] }
        (0...self.length).each do |idx|
            (0...self.length).each do |idx2|
                transposed[idx] << self[idx2][idx]
            end
        end
        transposed
    end

    def stock_picker
        days = []
        profit = 0

        (0...self.length - 1).each do |idx|
            (idx...self.length).each do |idx2|
                temp_p = self[idx2] - self[idx]
                if temp_p > profit
                    profit = temp_p 
                    days = [idx, idx2]
                end
            end 
        end

        profit > 0 ? days : []
    end
    
end

class TowersofHanoi

    attr_accessor :piles

    def initialize
        @piles = Array.new(3) { [] }
        piles[0] = [5,4,3,2,1]
    end

    def move
        1
    end

end