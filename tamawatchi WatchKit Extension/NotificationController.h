//
//  NotificationController.h
//  tamawatchi WatchKit Extension
//
//  Created by miguel on 13/12/14.
//  Copyright (c) 2014 miguelsanchez. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface NotificationController : WKUserNotificationInterfaceController
@property (weak, nonatomic) IBOutlet WKInterfaceImage *image;
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *stateNotification;
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *requestNotificationMessage;

@end
