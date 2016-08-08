require "game"

class GamesController < ApplicationController

  def game
  #calculer la grille
    @grid = generate_grid(10)
    @start = Time.now
    if session[:number_of_games]
      session[:number_of_games] += 1
    else
      session[:number_of_games] = 1
    end

  end

  def score
    #récuperer l'attempt
    #calculer score
    #mettre le score dans une variable d'instance
    @attempt = params[:attempt]
    @grid = params[:grid].split("")
    #calculer le score
    @result = run_game(@attempt, @grid, params[:start].to_datetime, Time.now)

  end

end
