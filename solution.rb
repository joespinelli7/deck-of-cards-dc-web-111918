require 'pry'

class Card
  attr_reader :rank, :suit
  @rank = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
  @suit = ["Hearts" , "Clubs", "Diamonds", "Spades"]

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

end

class Deck
  attr_accessor :cards
  @@all = []

  def initialize
    @cards = cards
    @@all << self
  end

  def self.all
    @@all
  end

  def self.choose_card
    @@all.each do |card|
      card
      binding.pry
    end
  end

end


deck = Deck.new
card = Card.new("A", "Clubs")

Deck.choose_card
#selects random card from the deck and removes it.
