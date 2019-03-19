require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

s1 = Startup.new("Grub24", "Sam", "grub24.co.uk")
s2 = Startup.new("Uber", "Alex", "uber.com")
s3 = Startup.new("Deliveroo", "Dani", "deliveroo.com")

v1 = VentureCapitalist.new("A2 Capitals", 300000000)
v2 = VentureCapitalist.new("Black rock Capitals", 15000000000)
v3 = VentureCapitalist.new("Barclays Capitals", 9000000000)


f1 = FundingRound.new(s1, v2, "Pre-Seed", 1500000)
f2 = FundingRound.new(s2, v3, "Series C", 21500000)
f3 = FundingRound.new(s2, v2, "Seed", 3000000)
f4 = FundingRound.new(s3, v3, "Series B", 75000000)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line