//
//  Candy.m
//  MacRuby_forwarding_invocation_example
//
//  Created by Clay Bridges on 8/15/09.

#import "Candy.h"

@implementation Candy

@synthesize flavor;

- (void) dealloc {
	[flavor release];
	[super dealloc];
}

@end
