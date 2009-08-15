#import <Foundation/Foundation.h>
#import "Candy.h"
#import "CandyWrapper.h"

int main (int argc, const char * argv[]) {
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];

	Candy* rootBeerCandy = [[Candy alloc] init];
	rootBeerCandy.flavor = @"Root Beer";
    
	CandyWrapper* rootBeerWrapper = [[CandyWrapper alloc] initWithCandy:rootBeerCandy];
	NSLog(@"Candy#flavor \"%@\", Wrapper#flavor \"%@\"", rootBeerCandy.flavor, rootBeerWrapper.flavor);
	
	[pool drain];
    return 0;
}
