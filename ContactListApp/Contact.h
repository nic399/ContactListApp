//
//  Contact.h
//  ContactListApp
//
//  Created by Nicholas Fung on 2017-10-03.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PhoneNumber.h"
#define NSLog(FORMAT, ...) printf("%s\n", [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);

@interface Contact : NSObject
    
    @property NSString* name;
    @property NSString* email;
    @property NSMutableArray* phoneNumbers;
    
    -(instancetype)initWithName: (NSString*)name andEmail:(NSString *)email;
    -(void)printContact;
    -(BOOL)containsString: (NSString*)searchString;
    -(void)addPhoneNumber: (NSString*)phoneNumber withTag:(NSString*)tag;

@end
