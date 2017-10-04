//
//  Contact.m
//  ContactListApp
//
//  Created by Nicholas Fung on 2017-10-03.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import "Contact.h"
#import "InputCollector.h"

@implementation Contact
    
    -(instancetype)initWithName:(NSString *)name andEmail:(NSString *)email {
        
        self = [super init];
        if (self) {
            self.name = name;
            self.email = email;
            self.phoneNumbers = [[NSMutableArray alloc] init];
            
            
            
            
        }
        
        return self;
    }

    
    -(void)printContact {
        NSLog(@"Name: %@       Email: %@", self.name, self.email);
        NSLog(@"Phone numbers: ");
        for (int i = 0; i < [self.phoneNumbers count]; i++) {
            NSLog(@"%@: %@", [[self.phoneNumbers objectAtIndex:i] tag], [[self.phoneNumbers objectAtIndex:i] phoneNumber]);
        }
    }
    
    -(BOOL)containsString:(NSString *)searchString {
        if ([self.name localizedCaseInsensitiveCompare:searchString] || [self.email localizedCaseInsensitiveCompare:searchString]) {
            return true;
        }
        else {
            return false;
        }
    }
    
    -(void)addPhoneNumber:(NSString *)phoneNumber withTag:(NSString *)tag {
        PhoneNumber* newPhoneNumber = [[PhoneNumber alloc] initWithPhoneNumber:phoneNumber withTag:tag];
        [self.phoneNumbers addObject:newPhoneNumber];
        NSLog(@"# of number: %lu", (unsigned long)[self.phoneNumbers count])
    }
    
@end









