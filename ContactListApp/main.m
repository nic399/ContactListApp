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
        
        NSLog(@"Welcome to the CLI Contact App");
        BOOL stayOpen = true;
        NSString* menuPrompt = @"\nWhat would you like to do next?\nnew - Create a new contact\nlist - List all contacts\nshow '#' - Show contact number '#'\nsearch 'searchPhrase' - Searches all contacts for 'searchPhrase'\nquit - Exit Application";
        NSDictionary * command = @{@"new":@"1", @"list":@"2", @"show":@"3", @"quit":@"4", @"search":@"5"};
        InputCollector* myInputCollector = [InputCollector new];
        NSString* userInput;
        int userCommand;
        ContactList* myContactList = [ContactList new];
        
        Contact* newContact1 = [[Contact alloc] initWithName:@"Bob" andEmail:@"bob1984@gmail.com"];
        [myContactList addContact:newContact1];
        Contact* newContact2 = [[Contact alloc] initWithName:@"John" andEmail:@"john999@yahoo.com"];
        [myContactList addContact:newContact2];
        Contact* newContact3 = [[Contact alloc] initWithName:@"Jane" andEmail:@"qwerty@hotmail.com"];
        [myContactList addContact:newContact3];
        [myContactList printContactList];
        
        
        while (stayOpen) {
            
            
            
            
            userInput = [myInputCollector inputForPrompt:menuPrompt];
            NSArray *arrayWithInputWords = [userInput componentsSeparatedByString: @" "];
            
            userCommand = [[command valueForKey:[arrayWithInputWords firstObject]] intValue];
            NSLog(@"input:%@ key:%i", userInput, userCommand);
            
            
            
            
            switch (userCommand) {
                
                case 1: { // add a new Contact
                    NSString* newEmail = [myInputCollector inputForPrompt:@"Enter the email of the contact: "];
                    NSString* newName =[myInputCollector inputForPrompt:@"Enter the full name of the contact: "];
                    Contact* newContact = [[Contact alloc] initWithName:newName andEmail:newEmail];
                    NSLog(@"%@: %@", newContact.name, newContact.email);
                    [myContactList addContact:newContact];
                    [myContactList printContactList];
                    break;
                }
                
                case 2: { // print out all the Contacts
                    [myContactList printContactList];
                    break;
                }
                
                case 3: { // show a Contact
                    if ([arrayWithInputWords count] < 2) {
                        NSLog(@"Error: the 'show' command must be followed by an integer, i.e. 'show 3'");
                        break;
                    }
                    int searchId = [[arrayWithInputWords objectAtIndex:1] intValue];
                    [myContactList showContact:searchId];
                    break;
                }
                
                case 4: { // quit the application
                    stayOpen = false;
                    break;
                }
                
                case 5: { // search fo a contact
                    if ([arrayWithInputWords count] < 2) {
                        NSLog(@"Error: the 'search' command must be followed by a search term, i.e. 'show Bob', 'show bob@gmail.com', 'show gmail'");
                        break;
                    }
                    NSString* searchString = [arrayWithInputWords objectAtIndex:1];
                    [myContactList searchContacts:searchString];
                    break;
                }
                
                default: {
                    NSLog(@"Not a valid option!");
                    
                    break;
                }
            }
            
            
            
        }
        
        NSLog(@"Exiting Application. \n\n\nGoodbye!");
        
        
        
        
        
    }
    return 0;
}



























