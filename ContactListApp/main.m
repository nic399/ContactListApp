//
//  main.m
//  ContactListApp
//
//  Created by Nicholas Fung on 2017-10-03.
//  Copyright © 2017 Nicholas Fung. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"

void printMenu() {
    NSLog(@"What would you like to do next?");
    NSLog(@"new - Create a new contact");
    NSLog(@"list - List all contacts");
    NSLog(@"quit - Exit Application");
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL stayOpen = true;
        NSString* menuPrompt = @"\nWhat would you like to do next?\nnew - Create a new contact\nlist - List all contacts\nquit - Exit Application";
        NSDictionary * command = @{@"new":@"1", @"list":@"2", @"new":@"3", @"quit":@"4"};
        InputCollector* myInputCollector = [InputCollector new];
        NSString* userInput;
        int userCommand;
        
        
        
        
        while (stayOpen) {
            
            
            
            
            userInput = [myInputCollector inputForPrompt:menuPrompt];
            
            userCommand = [[command valueForKey:userInput] intValue];
            NSLog(@"%@ %i", userInput, userCommand);
            
            
            
            
            switch (userCommand) {
                case 4:
                stayOpen = false;
                break;
                
                default:
                break;
            }
            
            
            
        }
        
        
        
        
        
    }
    return 0;
}



























