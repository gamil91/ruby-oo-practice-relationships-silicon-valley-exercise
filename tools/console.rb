require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



lyft = Startup.new("Lyft", "someguy/gal", "lyft.com")
uber = Startup.new("Uber", "somegay", "uber.com")

michael = VentureCapitalist.new("Michael", 200000)
marisa = VentureCapitalist.new("Marisa", 1000000001)
alex = VentureCapitalist.new("Alex", 1000000002)


f1 = FundingRound.new(lyft, michael, "Seed", 50000)
f2 = FundingRound.new(lyft, marisa, "Pre-Seed", 100000)
f3 = FundingRound.new(uber, alex, "Seed", 100000)
f4 = FundingRound.new(uber, alex, "Seed", -100)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line