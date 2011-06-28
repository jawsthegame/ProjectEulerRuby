class Problem54
  def Problem54.run
		checks = []
		checks << lambda {|hand| is_royal_flush(hand)}
		checks << lambda {|hand| is_straight_flush(hand)}
		checks << lambda {|hand| is_four_of_a_kind(hand)}
		checks << lambda {|hand| is_full_house(hand)}
		checks << lambda {|hand| is_flush(hand)}
		checks << lambda {|hand| is_straight(hand)}
		checks << lambda {|hand| is_three_of_a_kind(hand)}
		checks << lambda {|hand| is_two_pairs(hand)}
		checks << lambda {|hand| is_two_of_a_kind(hand)}
		checks << lambda {|hand| get_high_card(hand)}
		
		all_hands = IO.readlines("./data/poker.txt") #get_hands("JC JS 5C 5D 5H 2S 3H 3S 5S 2D")
		p1count = 0
		p2count = 0
		all_hands.each do |h|
			player_hands = get_hands(h)
			checks.each do |check|
				if check.call(player_hands[0]) > check.call(player_hands[1])
					p1count += 1
					break
				elsif check.call(player_hands[1]) > check.call(player_hands[0])
					p2count += 1
					break
				end
			end
		end
		
		puts "Player One: #{p1count}, Player Two: #{p2count}"
  end
	
  def Problem54.is_royal_flush(hand)
    is_flush(hand) and get_card_numbers(hand) == ["10", "11", "12", "13", "14"] ? 14 : 0
  end
  
  def Problem54.is_straight_flush(hand)
    is_flush(hand) and is_straight(hand) ? get_high_card(hand) : 0
  end
  
  def Problem54.is_four_of_a_kind(hand)
    is_n_of_a_kind(hand, 4)
  end
  
  def Problem54.is_three_of_a_kind(hand)
    is_n_of_a_kind(hand, 3)
  end
  
  def Problem54.is_two_of_a_kind(hand)
    is_n_of_a_kind(hand, 2)
  end
  
  def Problem54.is_n_of_a_kind(hand, n)
    groups = get_card_numbers(hand).group_by{|card| card}
	matched_group = groups.values.select{|g| g.length == n}[0]
	matched_group != nil ? Integer(matched_group[0]) : 0
  end
  
  def Problem54.is_full_house(hand)
    sets = get_card_sets(hand)
    (sets.length == 2 and sets.any?{|v| v.length == 3}) ? Integer(sets.select{|s| s.length == 3}[0][0]) : 0
  end
  
  def Problem54.is_flush(hand)
    suit = hand[0][-1]
    hand[1..4].all?{|card| card[-1] == suit} ? get_high_card(hand) : 0
  end
  
  def Problem54.is_straight(hand)
    cards = get_card_numbers(hand)
    (cards.uniq.length == 5 and Integer(cards[-1]) - Integer(cards[0]) == 4) ? get_high_card(hand) : 0
  end
  
  def Problem54.is_two_pairs(hand)
    pairs = get_card_sets(hand).select{|set| set.length == 2}
	pairs.length == 2 ? Integer(pairs.max[0]) : 0
  end
  
  def Problem54.get_high_card(hand)
	get_card_numbers(hand).map{|card| Integer(card)}.max
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
    line = line.gsub("T", "10").gsub("J", "11").gsub("Q", "12").gsub("K", "13").gsub("A", "14")
    cards = line.split(' ')
    hands << cards[0..4]
    hands << cards[5..9]
    hands
  end
end