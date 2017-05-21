//
//  Person.h
//  Prototype
//
//  Created by Vasilii on 21.05.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject<NSCopying>

@property(nonatomic, weak) NSString *name;
@property(nonatomic, weak) NSString *surname;
@property(nonatomic, weak) NSString *age;

-(id)copyWithZone:(NSZone *)zone;

@end
