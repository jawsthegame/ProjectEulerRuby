class Problem54
  def Problem54.run
		checks = []
		checks << lambda {|hand_one, hand_two| royal_flush(hand_one, hand_two)}
		checks << lambda {|hand_one, hand_two| straight_flush(hand_one, hand_two)}
		checks << lambda {|hand_one, hand_two| four_of_a_kind(hand_one, hand_two)}
		checks << lambda {|hand_one, hand_two| full_house(hand_one, hand_two)}
		checks << lambda {|hand_one, hand_two| flush(hand_one, hand_two)}
		checks << lambda {|hand_one, hand_two| straight(hand_one, hand_two)}
		checks << lambda {|hand_one, hand_two| three_of_a_kind(hand_one, hand_two)}
		checks << lambda {|hand_one, hand_two| two_pairs(hand_one, hand_two)}
		checks << lambda {|hand_one, hand_two| two_of_a_kind(hand_one, hand_two)}
		checks << lambda {|hand_one, hand_two| high_card(hand_one, hand_two)}
		
		all_hands = IO.readlines("./data/poker.txt") #get_hands("JC JS 5C 5D 5H 2S 3H 3S 5S 2D")
		p1count = 0
		p2count = 0
		all_hands.each do |h|
			player_hands = get_hands(h)
			checks.each do |check|
				result = check.call(player_hands[0], player_hands[1])
				if result == 1
					p1count += 1
					break
				elsif result == 2
					p2count += 1
					break
				end
			end
		end
		
		puts "Player One: #{p1count}, Player Two: #{p2count}"
  end
	
	# Royal Flush
  def Problem54.royal_flush(hand_one, hand_two)
		process_results(is_royal_flush(hand_one), is_royal_flush(hand_two))
  end
  
  def Problem54.is_royal_flush(hand)
		is_flush(hand) and get_card_numbers(hand) == ["10", "11", "12", "13", "14"] ? 14 : 0
	end
  
	# Straight Flush
  def Problem54.straight_flush(hand_one, hand_two)
    process_results(is_straight_flush(hand_one), is_straight_flush(hand_two))
  end
	
	def Problem54.is_straight_flush(hand)
    (is_flush(hand) > 0 and is_straight(hand) > 0) ? get_high_card(hand) : 0
  end
  
	#Four of a Kind
  def Problem54.four_of_a_kind(hand_one, hand_two)
    process_results(is_n_of_a_kind(hand_one, 4), is_n_of_a_kind(hand_two, 4))
  end
  
	#Three of a Kind
  def Problem54.three_of_a_kind(hand_one, hand_two)
    process_results(is_n_of_a_kind(hand_one, 3), is_n_of_a_kind(hand_two, 3))
  end
  
	#Two of a Kind
  def Problem54.two_of_a_kind(hand_one, hand_two)
    process_results(is_n_of_a_kind(hand_one, 2), is_n_of_a_kind(hand_two, 2))
  end
  
  def Problem54.is_n_of_a_kind(hand, n)
    groups = get_card_numbers(hand).group_by{|card| card}
		matched_group = groups.values.select{|g| g.length == n}[0]
		matched_group != nil ? Integer(matched_group[0]) : 0
  end
  	
	#Full House
	def Problem54.full_house(hand_one, hand_two)
		process_results(is_full_house(hand_one), is_full_house(hand_two))
  end
	
  def Problem54.is_full_house(hand)
    sets = get_card_sets(hand)
    (sets.length == 2 and sets.any?{|v| v.length == 3}) ? Integer(sets.select{|s| s.length == 3}[0][0]) : 0
  end
  
	#Flush
  def Problem54.flush(hand_one, hand_two)
		process_results(is_flush(hand_one), is_flush(hand_two))
  end
  
  def Problem54.is_flush(hand)
    suit = hand[0][-1]
    hand[1..4].all?{|card| card[-1] == suit} ? get_high_card(hand) : 0
  end
  
	#Straight
  def Problem54.straight(hand_one, hand_two)
		process_results(is_straight(hand_one), is_straight(hand_two))
  end
  
  def Problem54.is_straight(hand)
    cards = get_card_numbers(hand)
    (cards.uniq.length == 5 and Integer(cards[-1]) - Integer(cards[0]) == 4) ? get_high_card(hand) : 0
  end
  
	#Two Pairs
	def Problem54.two_pairs(hand_one, hand_two)
		hand_one_result = is_two_pairs(hand_one)
		hand_two_result = is_two_pairs(hand_two)
		return 0 if hand_one_result[1] == 0 && hand_two_result[1] == 0
		return hand_one_result[0] > hand_two_result[0] ? hand_one_result[0] : hand_two_result[0] if hand_one_result[1] == hand_two_result[1]
		process_results(hand_one_result[1], hand_two_result[1])
	end
	
  def Problem54.is_two_pairs(hand)
    pairs = get_card_sets(hand).select{|set| set.length == 2}
		return 0 if pairs.length < 2
		[Integer(pairs[0][0]), Integer(pairs[1][0])].sort
  end
  
	#High Card
  def Problem54.high_card(hand_one, hand_two)
		process_results(get_high_card(hand_one), get_high_card(hand_two))
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
	
	def Problem54.process_results(hand_one_result, hand_two_result)
		return 0 if hand_one_result == 0 && hand_two_result == 0
		hand_one_result > hand_two_result ? 1 : 2
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