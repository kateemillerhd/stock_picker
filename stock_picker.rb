def stock_picker(prices)
	return nil if prices.length < 2

	max_profit = 0
	best_days = []

	prices.each_with_index do |buy_price, buy_day|
		(buy_day + 1...prices.length).each do |sell_day|
			sell_price = prices[sell_day]
			profit = sell_price - buy_price

			if profit > max_profit
				max_profit = profit
				best_days = [buy_day, sell_day]
			end
		end
	end

	return nil if best_days.empty?
	best_days
end

p stock_picker([17,3,6,9,15,8,6,1,10])
