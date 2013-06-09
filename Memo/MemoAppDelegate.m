//
//  MemoAppDelegate.m
//  Memo
//
//  Created by xiaoqinliu on 13-6-9.
//  Copyright 2013年 __MyCompanyName__. All rights reserved.
//

#import "MemoAppDelegate.h"

@implementation MemoAppDelegate

@synthesize memoLine = _memoLine;
@synthesize tv = _tv;
@synthesize window = _window;

-(id)init{
    self = [super init];
    if(self){
        memos = [[NSMutableArray alloc]init];
    }
    return self;
}
- (IBAction)add:(id)sender {
    NSString * string = [_memoLine stringValue];
    [memos addObject:string];
    [_tv reloadData];
}
- (NSInteger)numberOfRowsInTableView:(NSTableView *)aTableView
{
    return [memos count];
}
- (id)tableView:(NSTableView *)aTableView 
objectValueForTableColumn:(NSTableColumn *)aTableColumn 
            row:(NSInteger)rowIndex

{
    return [memos objectAtIndex:rowIndex];
}
//get modified cell data.
- (void)tableView:(NSTableView *)aTableView setObjectValue:(id)anObject forTableColumn:(NSTableColumn *)aTableColumn row:(NSInteger)rowIndex
{
    [memos replaceObjectAtIndex:rowIndex withObject:anObject];
    [_tv reloadData];
}
@end
