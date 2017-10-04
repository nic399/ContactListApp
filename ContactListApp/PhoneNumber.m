//
//  PhoneNumber.m
//  ContactListApp
//
//  Created by Nicholas Fung on 2017-10-03.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import "PhoneNumber.h"

@implementation PhoneNumber
    
    -(instancetype)initWithPhoneNumber:(NSString *)phoneNumber withTag:(NSString *)tag {
        self = [super init];
        if (self) {
            self.tag = tag;
            self.phoneNumber = phoneNumber;
        }
        return self;
    }

@end
