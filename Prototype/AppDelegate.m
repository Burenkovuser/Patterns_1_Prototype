//
//  AppDelegate.m
//  Prototype
//
//  Created by Vasilii on 21.05.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "AppDelegate.h"
#import "Person.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    //Патерн позволяет получить точную копию объекта. Применяется когда есть похожие объекты разница между которыми только в состоянии полей. Для этого надо реализовать протокол NSCopying, и перегрузить.
    
    Person *firsePerson = [[Person alloc] init];
    firsePerson.name = @"Sveta";
    firsePerson.surname = @"Summer";
    firsePerson.age = @"23";
    
    Person *secondPerson = firsePerson.copy;
    secondPerson.name = @"Oleg";
    secondPerson.surname = @"Set";
    secondPerson.age = @"11";
    
    NSLog(@"FirstPerson name = %@ surname = %@ age = %@", firsePerson.name, firsePerson.surname, firsePerson.age);
    NSLog(@"SecondPerson = %@, surname = %@, age = %@", secondPerson.name, secondPerson.surname, secondPerson.age);
    NSLog(@"FirstPerson name = %@ surname = %@ age = %@", firsePerson.name, firsePerson.surname, firsePerson.age);
    
    NSLog(@"Получили два независимых объекта, один из которых сделан по подобию первого.");
    
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
