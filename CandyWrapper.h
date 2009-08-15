//
//  CandyWrapper.h
//  MacRuby_forwarding_invocation_example
//
//  Created by Clay Bridges on 8/15/09.

#import <Cocoa/Cocoa.h>
@class Candy;

@interface CandyWrapper : NSObject {
	Candy* candy;
}

@property (readonly) NSString* flavor;

- (id) initWithCandy: (Candy*) candyArg;

@end
