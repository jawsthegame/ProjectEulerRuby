class Problem54
  def Problem54.run
    hands = get_hands("3C 3S 5C 5D 5H 2S 3S 4S 5S 6S")
    p hands[0]
    p is_n_of_a_kind(hands[0], 2)
    p is_n_of_a_kind(hands[0], 3)
    p is_n_of_a_kind(hands[0], 4)
    p is_full_house(hands[0])
  end
  
  def Problem54.is_royal_flush(hand)
    is_flush(hand) and get_card_numbers(hand) == ["10", "11", "12", "13", "14"]
  end
  
  def Problem54.is_straight_flush(hand)
    is_flush(hand) and is_straight(hand)
  end
  
  def Problem54.is_n_of_a_kind(hand, n)
    get_card_numbers(hand).group_by{|card| card}.values.any?{|v| v.length == n}
  end
  
  def Problem54.is_full_house(hand)
    sets = get_card_sets(hand)
    sets.length == 2 and sets.any?{|v| v.length == 3}
  end
  
  def Problem54.is_flush(hand)
    suit = hand[0][-1]
    hand[1..4].all?{|card| card[-1] == suit}
  end
  
  def Problem54.is_straight(hand)
    cards = get_card_numbers(hand)
    cards.uniq.length == 5 and Integer(cards[-1]) - Integer(cards[0]) == 4
  end
  
  def Problem54.is_two_pairs(hand)
    get_card_sets(hand).length == 2 and sets.any?{|v| v.length == 3}
  end
  
  def Problem54.get_card_sets(hand)
    cards = get_card_numbers(hand)
    cards.group_by{|card| card}.values
  end
  
  def Problem54.get_card_numbers(hand)
    hand.map{|card| card[0..-2]}.sort
  end
  
  def Problem54.get_hands(line)
    hands = []
    line = line.sub("J", "11").sub("Q", "12").sub("K", "13").sub("A", "14")
    cards = line.split(' ')
    hands << cards[0..4]
    hands << cards[5..9]
    hands
  end
end