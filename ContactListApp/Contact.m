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
            
            
            
            
        }
        
        return self;
    }

    
    -(void)printContact {
        NSLog(@"Name: %@\nEmail: %@", self.name, self.email);
    }
    
    
@end
