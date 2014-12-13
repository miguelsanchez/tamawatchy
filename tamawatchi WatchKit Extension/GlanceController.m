//
//  GlanceController.m
//  tamawatchi WatchKit Extension
//
//  Created by miguel on 13/12/14.
//  Copyright (c) 2014 miguelsanchez. All rights reserved.
//

#import "GlanceController.h"


@interface GlanceController()

@end


@implementation GlanceController

- (void)awakeWithContext:(id)context
{
  [super awakeWithContext:context];

  NSUserDefaults *shared = [[NSUserDefaults alloc] initWithSuiteName:@"group.com.miguelsanchez.tamawatchy.documents"];
  NSDictionary *dictionary = [shared valueForKey:@"stateDictionary"];

  if (dictionary)
  {
    NSNumber *hungry = dictionary[@"hungry"][@"state"];
    NSString *emoji = dictionary[@"hungry"][@"emoji"];
    self.glanceUnitsLabel.text = [NSString stringWithFormat:@"%@ %@", hungry, emoji];
  }
}

@end



