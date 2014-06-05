class Cell
	def shoot
		return 'AGAIN?!?!' if @shot_at
		@shot_at = true
		'ouch'
	end
end



class Grid

	def initialize
		@coordinates = ('A'..'J'.map do |column|
			1.upto(10).map do |row|
				{ "#{column}#{row}".to_sym => Cell.new }
			end
		end.flatten.inject(&:merge)
		@coordinates[:A1]=nil
	end

	def shoot_at(coordinate)
			@coordinates.fetch(coordinate).shoot
	end
end


class Game

	def initialize
		@grid = Grid.new
		
	end

	def play
		coordinate = gets.chomp.to_sym
		begin
			@grid.shoot_at coordinate
		rescue KeyError => e
			e.message.gsub('key','Coordinate')
			# puts e.class
			# puts e.message
			# puts "Thats not on the gird, dumbass!"
		rescue NoMethodError => e
			# raise RuntimeError, 'Something really bad has happened, contact Will'
			# abort 'Something really bad has happened, contact Will'
			cell = Cell.new
			@coordinates[coordinate] = cell
			cell.shoot
		end

end


# abort is the best solution here

# if you want to cater for any other error and you dont care
# what kind of error it is and you want to cater for all of
# those errors then you use rescue Exception => e
# raise "BOOM!"
#










require 'board'


describe Board do
	
	let(:board) {Board.new}

	it ''

end



require 'rules'

class Holder; include Rules; end

	describe Rules do


	it 'knows that B10 is in the range' do
		expect(board.range.include? 'B10').to be_true
	end

	it 'knows that Z10 is NOT in the range' do
		expect(board.range.include? 'Z100').to be_false
	end

	it 'knows that ship can only be straight' do

	end
	
	end


















