//
//  MainOptionsInterfaceController.m
//  tamawatchi
//
//  Created by miguel on 13/12/14.
//  Copyright (c) 2014 miguelsanchez. All rights reserved.
//

#import "MainOptionsInterfaceController.h"


@interface MainOptionsInterfaceController()

@end


@implementation MainOptionsInterfaceController

- (instancetype)initWithContext:(id)context {
    self = [super initWithContext:context];
    if (self)
    {
    }
    return self;
}

- (id)contextForSegueWithIdentifier:(NSString *)segueIdentifier
{
  return segueIdentifier;
}

@end



