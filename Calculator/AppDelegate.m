//
//  AppDelegate.m
//  Calculator
//
//  Created by 이동윤 on 2016. 8. 24..
//  Copyright © 2016년 Lotte. All rights reserved.
//

#import "AppDelegate.h"
#import "Calculator.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application
    didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    Calculator *calc = [[Calculator alloc]init];
    [calc setAccumulator:100.0];
    [calc add:200];
    NSLog(@"Result = %g", [calc accumulator]);
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
  
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
  
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
 
}

- (void)applicationDidBecomeActive:(UIApplication *)application {

}

- (void)applicationWillTerminate:(UIApplication *)application {
   
}

@end
