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
//        Contact* tempContact = [self.contactList lastObject];
//        tempContact.printContact;
    }
    
    -(void)printContactList {
        for (int i = 0; i < [self.contactList count]; i++) {
            NSLog(@"%i: %@ ()", i, [[self.contactList objectAtIndex:i] name]);
            
        }
    }
    
    -(BOOL)showContact:(int)contactId {
        if (contactId > [self.contactList count]) {
            NSLog(@"Contact not found");
            return false;
        }
        else {
            Contact* tempContact = [self.contactList objectAtIndex:contactId];
            NSString* tempName = tempContact.name;
            NSString* tempEmail = tempContact.email;
            NSLog(@"\nName: %@\nEmail: %@", tempName, tempEmail);
            return true;
        }
    }
    
    
    
    
    
@end
