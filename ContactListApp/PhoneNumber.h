//
//  PhoneNumber.h
//  ContactListApp
//
//  Created by Nicholas Fung on 2017-10-03.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import <Foundation/Foundation.h>
#define NSLog(FORMAT, ...) printf("%s\n", [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);

@interface PhoneNumber : NSObject
    
    @property NSString* tag;
    @property NSString* phoneNumber;
    
    -(instancetype)initWithPhoneNumber:(NSString*)phoneNumber withTag:(NSString*)tag;

@end
