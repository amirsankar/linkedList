//
//  linkedList.m
//  ll1
//
//  Created by amir sankar on 8/15/16.
//  Copyright © 2016 amir sankar. All rights reserved.
//

#import "linkedList.h"

@implementation linkedList

-(void)deleteNode: (int) index {
    node *theNode = self.head;
    
    for (int i = 0; i < index; i++) {
        theNode = theNode.link;
    }
    node *nodeToDelete = theNode.link;
    node *secondLink = theNode.link.link;
    theNode.link = secondLink;
    
    nodeToDelete = nil;
    
}

-(node*)findMiddleNode{
    node *myNode = self.head;
    int nodeCounter = 0;
    
    while (myNode.link != NULL) {
        myNode = myNode.link;
        nodeCounter ++;
    }
    
    int middle = nodeCounter / 2;
    
    myNode = self.head;
    for (int i = 0; i <= middle; i++) {
        myNode = myNode.link;
    }
    return myNode;
}

@end
