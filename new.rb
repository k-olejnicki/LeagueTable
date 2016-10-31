class LeagueTable
  attr_accessor :matches
    lt = LeagueTable.new
    home_team_score = 0
    away_team_score = 0
    puts "Proszę wpisać informację o meczu według przykładu: Man Utd 3 - 0 Liverpool"
      lt.matches = gets.chomp
      g = lt.matches.split(/(\d+)/)
      @counter_home = {win: 0, loss: 0, draw: 0}
      @counter_away = {win: 0, loss: 0, draw: 0}
      home_team = g[0]
      away_team = g[4]
      home_team_goal = g[1].to_i
      away_team_goal = g[3].to_i
      home_team_against = away_team_goal
      away_team_against = home_team_goal
      home_team_difference = home_team_goal - home_team_against
      away_team_difference = away_team_goal - away_team_against
    if home_team_goal > away_team_goal
          home_team_score, away_team_score = home_team_score +3, away_team_score +0, (result_home = :win), (result_away = :loss)
        else
          if home_team_goal < away_team_goal
            home_team_score, away_team_score = home_team_score +0, away_team_score +3, (result_home = :loss), (result_away = :win)
          elsif
            if home_team_goal == away_team_goal
              home_team_score, away_team_score = home_team_score +1, away_team_score +1, (result_home = :draw), (result_away = :draw)
            end
          end
      end
    @counter_home[result_home] += 1
    @counter_away[result_away] += 1
      puts " #{home_team}zdobył #{home_team_score} punkty, #{home_team_goal} bramek, #{home_team_against} straconych bramek, różnica bramkowa #{home_team_difference}, wygranych meczy: #{@counter_home[:win]}, przegranych meczy: #{@counter_home[:loss]}, zremisowanych meczy: #{@counter_home[:draw]}"
      puts "#{away_team} zdobył #{away_team_score} punkty, #{away_team_goal} bramek, #{away_team_against} straconych bramek, różnica bramkowa #{away_team_difference}, wygranych meczy: #{@counter_away[:win]}, przegranych meczy: #{@counter_away[:loss]}, zremisowanych meczy: #{@counter_away[:draw]}"
end

