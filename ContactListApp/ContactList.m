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
            [tempContact printContact];
            return true;
        }
    }
    
    -(void)searchContacts:(NSString *)search {
        int numOfHits = 0;
        for (int i = 0; i < [self.contactList count]; i++) {
            Contact* tempContact = [self.contactList objectAtIndex:i];
            if ([tempContact containsString:search]) {
                [tempContact printContact];
                numOfHits++;
            }
        }
        NSLog(@"Search complete: %i matches found",numOfHits);
    }
    
    -(BOOL)emailUsed:(NSString *)search {
        for (int i = 0; i < [self.contactList count]; i++) {
            if ([[[self.contactList objectAtIndex:i] email] isEqualToString:search]) {
                return true;
            }
        }
        return false;
    }
    
    
    
@end
