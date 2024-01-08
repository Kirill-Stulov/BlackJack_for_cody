# frozen_string_literal: true 
require_relative 'interface'
require_relative 'modules'

class Player
  include SharedVars
  include Validation

  attr_accessor :name, :cards, :score, :cash

  def initialize(name)
    # @name = name
    self.name = name.capitalize
    # эти параметры упаковать в [options]
    @cards = []
    @score = 0
    @cash = 100
    Player.players_collect(self)
    # Validation.validate_name(NAME_FORMAT)
    # если есть задача запускать валидации при создании объекта класса тут (например для проверки имени и др параметров)
    #  то можно создать метод validate2! как в Task9\depot\modules.rb
  end
  
  # method return true if player score > 21
  def busted?
    self.score > 21
  end

  # method return true if player score == 21
  def blackjack?
    self.score == 21
  end

  # method return true if player score < 21
  def in_game?
    self.score < 21 
  end

  # method for another_game method, resets cards and score if player choosed play again
  def reset_cards_score
    self.cards.clear
    self.score = 0
  end
end
