//
//  ContactList.m
//  ContactListApp
//
//  Created by Nicholas Fung on 2017-10-03.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import "ContactList.h"


@implementation ContactList
    
    -(instancetype)init {
        self = [super init];
        if (self) {
            self.contactList = [[NSMutableArray alloc] init];
        }
        return self;
    }

    
    -(void)addContact:(Contact *)newContact {
        [self.contactList addObject:newContact];
        Contact* tempContact = [self.contactList lastObject];
        tempContact.printContact;
    }
    
@end
