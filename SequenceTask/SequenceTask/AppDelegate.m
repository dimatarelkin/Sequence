//
//  AppDelegate.m
//  SequenceTask
//
//  Created by Dmitriy Tarelkin on 21/4/18.
//  Copyright © 2018 Dmitriy Tarelkin. All rights reserved.
//

#import "AppDelegate.h"
#import "SequenceFinder.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
//1 array
//all methods were calculated in initWithArray
    
    NSArray* firstArray = @[@100, @4, @200, @1, @3, @2];
    SequenceFinder* firstObject = [[SequenceFinder alloc]initWithArray:firstArray];
    
    [firstObject release];
    //firstArray will be auroreleased
    
    
    
//2 array
//all methods were calculated in initWithArray
    NSArray* secondArray = @[@503, @505, @587, @656, @766, @1485, @1939, @2264, @2780, @2813, @2900, @3083, @3118, @3379,
                        @3402, @3602, @3621, @4079, @4103, @4222, @4285, @4689, @4828, @4983, @4988, @5107, @5163, @5311,
                        @5719, @5781, @5854, @6225, @6319, @6326, @6421, @6972, @7225, @7317, @7366, @7427, @7514, @7775,
                        @7793, @7819, @8182, @8516, @8602, @8976, @9143, @9255, @9265, @9285, @9310, @9394, @9452, @9754];
    
    SequenceFinder* secondObject = [[SequenceFinder alloc] initWithArray:secondArray];
    
    [secondObject release];
    //secondArray will be auroreleased
 
    
    
    
//3 array
//all methods were calculated in initWithArray
    NSArray* thirdArray = @[@155, @192, @345, @393, @480, @598, @660, @722, @724, @772, @776, @782, @818, @839, @936, @1046, @1066, @1271, @1290, @1314, @1324, @1345, @1352, @438, @1443, @1456, @1518, @1645, @1683, @1701, @1773, @1781, @1816, @2089, @2240, @2281, @2302, @2369, @2417, @2442, @2447, @2465, @2526, @2586, @2592, @2642, @2645, @2689, @2797, @3107, @3138, @3204, @3360, @3459, @3475, @3529, @3535, @3595, @3648, @3650, @3773, @3891, @4038, @4285, @4292, @4333, @4387, @4535, @4576, @4674, @4734, @4845, @4862, @4919, @4937, @4950, @5059, @5138, @5200, @5255, @5375, @5397, @5407, @5588, @5597, @5784, @5784, @5794, @6003, @6083, @6132, @6137, @6166, @6233, @6237, @6335, @6345, @6358, @6473, @6486, @6487, @6512, @6525, @6541, @6565, @6581, @6794, @6854, @7066, @7074, @7208, @7217, @7365, @7424, @7493, @7513, @7586, @7612, @7724, @7840, @7856, @7952, @7967, @8095, @8125, @8147, @8165, @8208, @8213, @8272, @8280, @8360, @8373, @8405, @8519, @8523, @8552, @8654, @8748, @8770, @8771, @8787, @8800, @8824, @8839, @8852, @8954, @8960, @9029, @9041, @9048, @9110, @9151, @9169, @9315, @9340, @9340, @9478, @9489, @9527, @9528, @9630, @9674, @9869, @9968];
    
    SequenceFinder* thirdObject = [[SequenceFinder alloc] initWithArray:thirdArray];
    
    [thirdObject release];
    //thirdArray will be autoreleased
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
