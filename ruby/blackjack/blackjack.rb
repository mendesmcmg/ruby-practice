# rubocop:disable all
module Blackjack
  def self.parse_card(card)
    case card
    when "two" then 2
    when "three" then 3
    when "four" then 4
    when "five" then 5
    when "six" then 6
    when "seven" then 7
    when "eight" then 8
    when "nine" then 9
    when "ten" then 10
    when "jack" then 10
    when "queen" then 10
    when "king" then 10
    when "ace" then 11
    else 0
    end
  end

  def self.card_range(card1, card2)
    player_score = parse_card(card1) + parse_card(card2)
    case player_score
    when (4..11) then "low"
    when (12..16) then "mid"
    when (17..20) then "high"
    else "blackjack"
    end
  end

  def self.first_turn(card1, card2, dealer_card)
    range = card_range(card1, card2)
    dealer = parse_card(dealer_card)
    if range == "blackjack" and dealer < 10
      "W"
    elsif range == "high"
      "S"
    elsif range == "mid" and dealer < 7
      "S"
    elsif range == "mid" and dealer > 6
      "H"
    elsif range == "low" 
      "H"
    elsif card1 == "ace" and card2 == "ace"
      "P"
    else
      "S"
    end
  end
end
