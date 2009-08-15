//
//  Candy.h
//  MacRuby_forwarding_invocation_example
//
//  Created by Clay Bridges on 8/15/09.

#import <Cocoa/Cocoa.h>

@interface Candy : NSObject {
	NSString* flavor;
}

@property (readwrite, retain) NSString* flavor;

@end
