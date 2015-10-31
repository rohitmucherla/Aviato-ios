//
//  Event.h
//  AviatoFeed
//
//  Created by Charlie Crouse on 10/30/15.
//  Copyright © 2015 AggieCodingClub. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Event : NSObject

@property (strong, nonatomic) NSString *eventName; // Name of event

@property (strong, nonatomic) NSString *eventTime; // Time of event

@property (strong, nonatomic) NSString *eventLocation; // Location of event

@property BOOL privateEvent; // Privacy of event

@property (strong, nonatomic) NSString *eventDescription; // Description of event

@property (strong, nonatomic) NSMutableSet *eventTags; // appended tags


- (NSString *) getName; // returns name of event

- (NSString *) getTime; // returns time of event

- (NSString *) getLocation; // returns location of event

- (BOOL) getPrivacy; // returns privacy of event (true if private false if public)

- (void) addDescription; // adds a description to the event

- (NSString *) getDescription; // returns description of event

- (void) addTag; // adds a tag to the event

- (NSMutableSet *) getTags; // returns set of tags of event


@end
