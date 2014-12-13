//
//  AnimatedActionInterfaceController.m
//  tamawatchi
//
//  Created by miguel on 13/12/14.
//  Copyright (c) 2014 miguelsanchez. All rights reserved.
//

#import "AnimatedActionInterfaceController.h"


@interface AnimatedActionInterfaceController()
{
  NSTimer *timer;
}

@end


@implementation AnimatedActionInterfaceController

- (instancetype)initWithContext:(id)context
{
  self = [super initWithContext:context];
  if (self)
  {
    NSLog(@"%@ initWithContext %@", self, context);

    [self.animatedImage setImageNamed:@"eating"];
    [self.animatedImage startAnimatingWithImagesInRange:NSMakeRange(0, 16) duration:3 repeatCount:1];

    NSUserDefaults *shared = [[NSUserDefaults alloc] initWithSuiteName:@"group.com.miguelsanchez.tamawatchy.documents"];

    NSMutableDictionary *stateDictionary = [NSMutableDictionary dictionaryWithDictionary:[shared valueForKey:@"stateDictionary"]];

    NSMutableDictionary *dictionaryForActivity = [NSMutableDictionary dictionaryWithDictionary:[stateDictionary objectForKey:context]];
    NSNumber *number = dictionaryForActivity[@"state"];
    NSInteger stateValue = number.integerValue;
    stateValue = MIN(15, stateValue+1);

    dictionaryForActivity[@"state"] = @(stateValue);

    stateDictionary[context] = dictionaryForActivity;

    [shared setObject:stateDictionary forKey:@"stateDictionary"];
    [shared synchronize];

    timer = [NSTimer scheduledTimerWithTimeInterval:4.0 target:self selector:@selector(handleTimer:) userInfo:nil repeats:NO];
  }
  return self;
}

- (void)handleTimer:(NSTimer*)timer
{
  [self popToRootController];

  [WKInterfaceController openParentApplication:@{@"request":@"Updated"}
                                         reply:^(NSDictionary *replyInfo, NSError *error) {
                                           NSLog(@"%@", replyInfo);}];

}

@end



