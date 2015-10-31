//
//  Event.m
//  AviatoFeed
//
//  Created by Charlie Crouse on 10/30/15.
//  Copyright © 2015 AggieCodingClub. All rights reserved.
//

#import "Event.h"

@implementation Event

// constructer
- (id) initEvent: (NSString *)anEventName
       eventTime: (NSString *)anEventTime
   eventLocation: (NSString *)anEventLocation
    privateEvent: (BOOL)aPrivateEvent
{
    self = [super init];
    if (self) {
        // Initialization code here.
        _eventName = anEventName;
        _eventTime = anEventTime;
        _eventLocation = anEventLocation;
        _privateEvent = aPrivateEvent;
        _eventDescription = Nil;
        _eventTags = [NSMutableSet set];
        
    }
    
    return self;
}


// @return name of event
- (NSString *) getName {
    return self.eventName;
}

// @return time of event
- (NSString *) getTime {
    return self.eventTime;
}

// @return location of event
- (NSString *) getLocation {
    return self.eventLocation;
}

// @return privacy of event
- (BOOL) getPrivacy {
    return self.privateEvent;
}

// set description of event to desired input
- (void) addDescription: (NSString *)aDescription // adds description to event
{
    [self setEventDescription:aDescription];
}

// returns description if not nil
- (NSString *) getDescription {
    if (self.description != nil)
        return self.description;
    else
        return nil;
}

// adds tag to event
- (void) addTag: (NSString *)aTag
{
    NSMutableSet *copyOf = [NSMutableSet setWithSet:self.eventTags];
    [copyOf addObject:aTag];
    
    [self setEventTags:copyOf];
}



@end
