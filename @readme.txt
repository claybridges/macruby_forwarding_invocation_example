I'm using a forwardingTargetForSelector: to create a wrapper class in ObjC. It seems to work in ObjC, but when I try to use it in MacRuby 0.4, I get an error. This exists as an example of that. Here's the code that works in ObjC. 

  Candy* rootBeerCandy = [[Candy alloc] init];
  rootBeerCandy.flavor = @"Root Beer";
    
  CandyWrapper* rootBeerWrapper = [[CandyWrapper alloc] initWithCandy:rootBeerCandy];
  NSLog(@"Candy#flavor \"%@\", Wrapper#flavor \"%@\"", rootBeerCandy.flavor, 
	      rootBeerWrapper.flavor);

Which gives the following output:

  NSLog[] <CandyWrapper: 0x104fb0> forwarding flavor to <Candy: 0x103380>
  NSLog[] Candy#flavor "Root Beer", Wrapper#flavor "Root Beer"

If you load and run the xcode project in this directory, you'll get that output.

Here's that same code instantiated in MacRuby:

  rootBeerCandy = Candy.alloc.init
  rootBeerCandy.flavor = 'Root Beer'
      
  rootBeerWrapper = CandyWrapper.alloc.initWithCandy rootBeerCandy
  puts "Candy#flavor #{rootBeerCandy.flavor}, Wrapper#flavor #{rootBeerWrapper.flavor}"

Which gives:

  candy_test.rb:7:in `<main>': undefined method `flavor' for #<CandyWrapper:0x8000aa2a0> (NoMethodError)
  rake aborted!

If you run "macrake test" in this directory, you should get that output. 

Clay Bridges
diffengr@gmail.com
15 Aug 2009
