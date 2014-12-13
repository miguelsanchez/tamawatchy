//
//  NotificationController.m
//  tamawatchi WatchKit Extension
//
//  Created by miguel on 13/12/14.
//  Copyright (c) 2014 miguelsanchez. All rights reserved.
//

#import "NotificationController.h"


@interface NotificationController()

@end


@implementation NotificationController

- (void)awakeWithContext:(id)context
{
  [super awakeWithContext:context];
}

// Standard remote notification payload keys.
NSString* apsKeyString = @"aps";
NSString* titleKeyString = @"title";

// Payload keys that are specific to the app.
NSString* stateNotificationKey = @"stateNotification";
NSString* requestNotificationKey = @"requestNotification";


//- (void)didReceiveLocalNotification:(UILocalNotification *)localNotification withCompletion:(void (^)(WKUserNotificationInterfaceType))completionHandler {
//    // This method is called when a local notification needs to be presented.
//    // Implement it if you use a dynamic notification interface.
//    // Populate your dynamic notification inteface as quickly as possible.
//    //
//    // After populating your dynamic notification interface call the completion block.
//    completionHandler(WKUserNotificationInterfaceTypeCustom);
//
//    // Use Handoff to route the wearer to the image detail controller when the Glance is tapped.
//    [self updateUserActivity:@"com.miguelsanchez.tamawatchy" userInfo:@{@"controllerName": @"MainOptionsInterfaceController",
//                                                                        @"detailInfo": @""}];
//
//}
//

- (void)didReceiveRemoteNotification:(NSDictionary *)remoteNotification withCompletion:(void (^)(WKUserNotificationInterfaceType))completionHandler
{
//  // Get the aps dictionary from the payload.
//  NSDictionary* apsDict = [remoteNotification objectForKey:apsKeyString];

  NSString* stateNotificationString = [remoteNotification objectForKey:stateNotificationKey];
  [self.stateNotification setText:stateNotificationString];

  NSString* requestNotificationString = [remoteNotification objectForKey:requestNotificationKey];
  [self.requestNotificationMessage setText:requestNotificationString];

  // Tell WatchKit to display the custom interface.
  completionHandler(WKUserNotificationInterfaceTypeCustom);

//  // Use Handoff to route the wearer to the image detail controller when the Glance is tapped.
//  [self updateUserActivity:@"com.miguelsanchez.tamawatchy" userInfo:@{@"controllerName": @"MainOptionsInterfaceController",
//                                                                      @"detailInfo": @""}];


}

@end



