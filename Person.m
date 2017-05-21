//
//  Person.m
//  Prototype
//
//  Created by Vasilii on 21.05.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "Person.h"

@implementation Person

-(id)copyWithZone:(NSZone *)zone {
    Person *copy = [[self class] allocWithZone:zone];
    copy.name = self.name;
    copy.surname = self.surname;
    copy.age = self.age;
    return copy;
}

@end
