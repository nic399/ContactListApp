//
//  main.m
//  ContactListApp
//
//  Created by Nicholas Fung on 2017-10-03.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL stayOpen = true;
        NSString* menuPrompt = @"\nWhat would you like to do next?\nnew - Create a new contact\nlist - List all contacts\nquit - Exit Application";
        NSDictionary * command = @{@"new":@"1", @"list":@"2", @"new":@"3", @"quit":@"4"};
        InputCollector* myInputCollector = [InputCollector new];
        NSString* userInput;
        int userCommand;
        ContactList* myContactList = [ContactList new];
        
        
        
        
        while (stayOpen) {
            
            
            
            
            userInput = [myInputCollector inputForPrompt:menuPrompt];
            
            userCommand = [[command valueForKey:userInput] intValue];
            NSLog(@"%@ %i", userInput, userCommand);
            
            
            
            
            switch (userCommand) {
                case 4:{
                stayOpen = false;
                break;
                }
                case 1:{
                Contact* newContact = [[Contact alloc] initWithName:[myInputCollector inputForPrompt:@"Enter the full name of the contact: "] andEmail:[myInputCollector inputForPrompt:@"Enter the email of the contact: "]];
                    NSLog(@"%@: %@", newContact.name, newContact.email);
                    [myContactList addContact:newContact];
                break;
                }
                
                default:
                break;
            }
            
            
            
        }
        
        
        
        
        
    }
    return 0;
}



























