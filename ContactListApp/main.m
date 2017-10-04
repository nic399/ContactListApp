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
#define NSLog(FORMAT, ...) printf("%s\n", [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"Welcome to the CLI Contact App");
        BOOL stayOpen = true;
        BOOL morePhoneNumbers;
        NSString* menuPrompt = @"\nWhat would you like to do next?\nnew - Create a new contact\nlist - List all contacts\nshow '#' - Show contact number '#'\nsearch 'searchPhrase' - Searches all contacts for 'searchPhrase'\nquit - Exit Application";
        NSDictionary * command = @{@"new":@"1", @"list":@"2", @"show":@"3", @"quit":@"4", @"search":@"5"};
        InputCollector* myInputCollector = [InputCollector new];
        NSString* userInput;
        int userCommand;
        ContactList* myContactList = [ContactList new];
        
        Contact* seed1 = [[Contact alloc] initWithName:@"Bob" andEmail:@"bob1984@gmail.com"];
        [myContactList addContact:seed1];
        Contact* seed2 = [[Contact alloc] initWithName:@"John" andEmail:@"john999@yahoo.com"];
        [myContactList addContact:seed2];
        Contact* seed3 = [[Contact alloc] initWithName:@"Jane" andEmail:@"qwerty@hotmail.com"];
        [myContactList addContact:seed3];
        [myContactList printContactList];
        
        
        while (stayOpen) {
            
            
            
            
            userInput = [myInputCollector inputForPrompt:menuPrompt];
            NSArray *arrayWithInputWords = [userInput componentsSeparatedByString: @" "];
            
            userCommand = [[command valueForKey:[arrayWithInputWords firstObject]] intValue];
            NSLog(@"input:%@ key:%i", userInput, userCommand);
            
            
            
            
            switch (userCommand) {
                
                case 1: { // add a new Contact
                    // check if the email entered is a duplicate
                    // if it is, prevent the creation of the new contact
                    NSString* newEmail = [myInputCollector inputForPrompt:@"Enter the email of the contact: "];
                    if ([myContactList emailUsed:newEmail]) {
                        NSLog(@"Error: email already assigned to a contact");
                        break;
                    }
                    
                    NSString* newName =[myInputCollector inputForPrompt:@"Enter the full name of the contact: "];
                    Contact* newContact = [[Contact alloc] initWithName:newName andEmail:newEmail];
                    NSLog(@"%@: %@", newContact.name, newContact.email);
                    
                    // check if the user wants to add a phone number(s) to the contact
                    
                    morePhoneNumbers = true;
                    do {
                        NSString* addPhoneNumber = [myInputCollector inputForPrompt:@"Do you want add a(nother) phone number for this contact? (y/n): "];
                        if ([addPhoneNumber isEqualToString:@"y"]) {
                            
                            NSString* phoneNumber = [myInputCollector inputForPrompt:@"Enter the phone number: "];
                            NSString* tag = [myInputCollector inputForPrompt:@"Enter the label for this number: "];
                            [newContact addPhoneNumber:phoneNumber withTag:tag];
                            
                            
                            
                        }
                        else if ([addPhoneNumber isEqualToString:@"n"]){
                            morePhoneNumbers = false;
                        }
                        else {
                            NSLog(@"Invalid input:");
                        }
                    } while (morePhoneNumbers);
                    
                    
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



























