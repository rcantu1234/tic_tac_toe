class Game 	
	attr_accessor :player1
	attr_accessor :player2

	def initialize
		@player1 = 1
		@player2 = 2
		@table = CreateTable.new
	end

	def play_game

			puts "	  ----------------------" 
			puts "	  Welcome to Tic-Tac-Toe"
			puts "	  ----------------------"

			print "Choose (y) to play or (n) to exit. "
			user_choice = gets.chomp

			counter = 0
			wins = 0

			if user_choice.downcase == 'y'

			@table.table

				while counter < 9 do
					puts
					print "Player #{@player1} choose a number: "
					player = gets.chomp
					puts

					mark = 'X'

					if player.to_i == 1
						@table.square[0] = mark
					elsif player.to_i == 2
					 	@table.square[1] = mark
					elsif player.to_i == 3
					 	@table.square[2] = mark
					elsif player.to_i == 4
					 	@table.square[3] = mark
					elsif player.to_i == 5
					 	@table.square[4] = mark
					elsif player.to_i == 6
					 	@table.square[5] = mark
					elsif player.to_i == 7
					 	@table.square[6] = mark
					elsif player.to_i == 8
					 	@table.square[7] = mark
					elsif player.to_i == 9
					 	@table.square[8] = mark
					end

					@table.table

					puts

					counter += 1

					if counter == 9
						abort "It's a draw!!!"
					end

					check_win(@player1, @player2) 
					
					puts

					# print "Player #{@player2} choose a number: "
					# player = gets.chomp

					player = rand(1..9)

					print "The computer is entering a number."
					print "The number is: #{player}"

					puts

					mark = 'O'

					if player.to_i == 1
						@table.square[0] = mark
					elsif player.to_i == 2
					 	@table.square[1] = mark
					elsif player.to_i == 3
					 	@table.square[2] = mark
					elsif player.to_i == 4
					 	@table.square[3] = mark
					elsif player.to_i == 5
					 	@table.square[4] = mark
					elsif player.to_i == 6
					 	@table.square[5] = mark
					elsif player.to_i == 7
					 	@table.square[6] = mark
					elsif player.to_i == 8
					 	@table.square[7] = mark
					elsif player.to_i == 9
					 	@table.square[8] = mark
					end

					@table.table

					counter += 1

					check_win(@player1, @player2)
				end

			elsif user_choice.downcase == 'n'
				abort("Maybe we'll play next time!!!")
			end
	end

	def check_win(player1, player2)
			if @table.square[0] == @table.square[1] && @table.square[1] == @table.square[2] 
				if @table.square[0] == 'X'
					puts "Player #{player1} wins!"
				else
					puts "Player #{player2} wins!"
				end
				abort("Game Over")
			elsif @table.square[3] == @table.square[4] && @table.square[4] == @table.square[5]
				if @table.square[3] == 'X'
					puts "Player #{player1} wins!"
				else
					puts "Player #{player2} wins!"
				end
				abort("Game Over")
			elsif @table.square[6] == @table.square[7] && @table.square[7] == @table.square[8]
				if @table.square[6] == 'X'
					puts "Player #{player1} wins!"
				else
					puts "Player #{player2} wins!"
				end		
				abort("Game Over")
			elsif @table.square[0] == @table.square[3] && @table.square[3] == @table.square[6]
				if @table.square[0] == 'X'
					puts "Player #{player1} wins!"
				else
					puts "Player #{player2} wins!"
				end		
				abort("Game Over")
			elsif @table.square[1] == @table.square[4] && @table.square[4] == @table.square[7]
				if @table.square[1] == 'X'
					puts "Player #{player1} wins!"
				else
					puts "Player #{player2} wins!"
				end		
				abort("Game Over")	
			elsif @table.square[2] == @table.square[5] && @table.square[5] == @table.square[8]
				if @table.square[2] == 'X'
					puts "Player #{player1} wins!"
				else
					puts "Player #{player2} wins!"
				end		
				abort("Game Over")
			elsif @table.square[0] == @table.square[4] && @table.square[4] == @table.square[8]
				if @table.square[0] == 'X'
					puts "Player #{player1} wins!"
				else
					puts "#Player {player2} wins!"
				end		
				abort("Game Over")
			elsif @table.square[2]== @table.square[4] && @table.square[4] == @table.square[6]
				if @table.square[2] == 'X'
					puts "Player #{player1} wins!"
				else
					puts "Player #{player2} wins!"
				end		
				abort("Game Over")
			end
	end
end

class CreateTable
	attr_accessor :square
	def initialize
		@square = [1, 2, 3, 4, 5, 6, 7, 8, 9]
	end

	def table
		puts "		|	|	   "
		puts "	      #{@square[0]} |   #{@square[1]}   | #{@square[2]}   "
		puts "	    -----------------"
		puts "	      #{@square[3]} |   #{@square[4]}   | #{@square[5]}	   "
		puts "      	    -----------------"
		puts "	      #{@square[6]} |   #{@square[7]}   | #{@square[8]}"
		puts "		|	|	   "

	end

end

# require 'rspec'
# describe 'game' do
# 	it 'Player 1 should exist' do
# 		expect(Game.new.player1).to eq 1
# 	end
# 	it 'Player 2 should exist' do
# 		expect(Game.new.player2).to eq 2
# 	end
# end

t = Game.new

t.play_game