require 'CandyWrapper'

rootBeerCandy = Candy.alloc.init
rootBeerCandy.flavor = 'Root Beer'
    
rootBeerWrapper = CandyWrapper.alloc.initWithCandy rootBeerCandy
puts "Candy#flavor #{rootBeerCandy.flavor}, Wrapper#flavor #{rootBeerWrapper.flavor}"
