require('rspec')
require('ruby_project')
# require('pry')

# no describe class?
describe('Coins') do
  describe('#initialize') do
    it ('rounds any float input to integer') do
      coins = Coins.new(50.5)
      expect(coins.quarters()).to(eq(2))
    end
  end

  describe('#quarters') do
    coins = Coins.new(92)
    it ('returns number of quarters in total amount') do
      expect(coins.quarters()).to(eq(3))
    end
  end

  describe('#dimes') do
    coins = Coins.new(92)
    it ('returns number of dimes in total amount') do
      expect(coins.dimes()).to(eq(9))
    end
  end

  describe('#nickels') do
    coins = Coins.new(92)
    it ('returns number of nickels in total amount') do
      expect(coins.nickels()).to(eq(18))
    end
  end

  describe('#pennies') do
    coins = Coins.new(92)
    it ('returns number of pennies in total amount') do
      expect(coins.pennies()).to(eq(92))
    end
  end

  describe('#output') do
    coins = Coins.new(92)
    it ('returns string based on all calculated amounts') do
      expect(coins.output()).to(eq("3 quarters, 1 dime, 1 nickel, 2 pennies"))
    end
  end
end
