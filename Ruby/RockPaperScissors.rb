

class WrongNumberOfPlayersError <  StandardError ; end

class NoSuchStrategyError <  StandardError ; end

# Number 4 Part A
def winner(game)
	if (game[1][1] == 'P' && game[0][1] == 'R' ||
        game[1][1] == 'S' && game[0][1] == 'P' ||
        game[1][1] == 'R' && game[0][1] == 'S') then
        return game[1]
    else 
    	return game[0]
    	end
    end
    	
def rps_game_winner(game)
	legalplays = ["R", "P", "S"]
    raise WrongNumberOfPlayersError unless game.length == 2
	if legalplays.include?(game[0][1]) && legalplays.include?(game[1][1])
		return winner(game)
	else 
		raise NoSuchStrategyError
	end
		

end

# Number 4 Part B
def rps_tournament_winner(tourny)
	# This will be a game, therefore we should evaluate it
    if tourny[0][0].is_a? String
        return rps_game_winner(tourny)
    end
    #We keep traversing until we find a single game
    return rps_game_winner([rps_tournament_winner(tourny[0]),rps_tournament_winner(tourny[1])])
end

tournament1 =[

    [

        [ ["Armando", "P"], ["Dave", "S"] ],

        [ ["Richard", "R"],  ["Michael", "S"] ],

    ],

    [

        [ ["Allen", "S"], ["Omer", "P"] ],

        [ ["David E.", "R"], ["Richard X.", "P"] ]

    ]

]

  game1 = [ ["Armando", "P"], ["Dave", "S"] ]
   game2 = [ ["Armando", "P"], ["Dave", "P"] ]
  puts rps_game_winner(game1)
  puts "\n"
  puts rps_game_winner(game2)
  puts rps_tournament_winner(tournament1)
  
  #Sources: http://stackoverflow.com/questions/14388700/ruby-rock-paper-scissors-tournament