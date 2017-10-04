//
//  ContactList.h
//  ContactListApp
//
//  Created by Nicholas Fung on 2017-10-03.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"
#define NSLog(FORMAT, ...) printf("%s\n", [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);

@interface ContactList : NSObject
    @property NSMutableArray* contactList;
    
    -(instancetype)init;
    -(void)addContact:(Contact*)newContact;
    -(void)printContactList;
    -(BOOL)showContact:(int)contactId;
    -(void)searchContacts:(NSString*)search;
    -(BOOL)emailUsed:(NSString*)search;

@end
