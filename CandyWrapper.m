//
//  CandyWrapper.m
//  MacRuby_forwarding_invocation_example
//
//  Created by Clay Bridges on 8/15/09.

#import "CandyWrapper.h"

@implementation CandyWrapper

@dynamic flavor;

- (id) initWithCandy: (Candy*) candyArg {
	if (self = [super init]) {
		candy = candyArg;
	}
	return self;
}

- (id)forwardingTargetForSelector:(SEL)sel {
	if (nil != candy && [candy respondsToSelector:sel]) {
		NSLog(@"%@ forwarding %@ to %@", self, NSStringFromSelector(sel), candy);
		return candy; 
	} else {
		return nil;
	}
}

@end
