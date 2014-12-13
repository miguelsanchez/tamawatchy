//
//  ViewController.m
//  tamawatchi
//
//  Created by miguel on 13/12/14.
//  Copyright (c) 2014 miguelsanchez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];

  [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(updateState) name:@"stateUpdate" object:nil];
  [self updateState];
}

- (void) updateState
{
  NSUserDefaults *shared = [[NSUserDefaults alloc] initWithSuiteName:@"group.com.miguelsanchez.tamawatchy.documents"];
  NSDictionary *dictionary = [shared valueForKey:@"stateDictionary"];

  if (dictionary)
  {
    NSNumber *number = dictionary[@"hungry"][@"state"];
    NSString *emoji = dictionary[@"hungry"][@"emoji"];
    self.hungryValue.text = [NSString stringWithFormat:@"%@ %@", number, emoji];

    number = dictionary[@"happiness"][@"state"];
    emoji = dictionary[@"happiness"][@"emoji"];
    self.happyValue.text = [NSString stringWithFormat:@"%@ %@", number, emoji];

    number = dictionary[@"clean"][@"state"];
    emoji = dictionary[@"clean"][@"emoji"];
    self.cleanValue.text = [NSString stringWithFormat:@"%@ %@", number, emoji];

    number = dictionary[@"sleep"][@"state"];
    emoji = dictionary[@"sleep"][@"emoji"];
    self.sleepValue.text = [NSString stringWithFormat:@"%@ %@", number, emoji];
  }
}


@end
