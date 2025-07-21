# Stock Picker

This is a simply Ruby script that determines the best days to buy and sell

---

## Objective
Implement a method `#stock_picker` that takes an array of stock prices (one for each
hypothetical day) and returns a pair of days representing the best day to **buy** and 4
the best day to **sell**, for the highest possible profit.

### Example:
```ruby
stock_picker([17,3,6,9,15,8,6,1,10])
# => [1, 4] # But at $3, sell at $15, for a profit of $12
```

## Features
- Returns the pair of days that give the maximum profit
- Ensures you can't sell before you buy
- Handles edge cases like:
  - Not enough data
  - No possible profit
 
## How It Works
- Iterates over each day as a potential buy day
- For each buy day, checks every future day as a possible sell day
- Calculates the profit for each pair
- Keeps track of the pair with the highest profit

## Credits
This project is a part of The Odin Project's Ruby curriculum
