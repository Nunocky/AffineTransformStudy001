//
//  MyView.m
//  AffineTransformStudy001
//
//  Created by 布川祐人 on 2014/04/27.
//  Copyright (c) 2014年 NUNOKAWA Masato. All rights reserved.
//

#import "MyView.h"

@implementation MyView

- (id)initWithFrame:(NSRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code here.
    }
    return self;
}

- (void)drawRect:(NSRect)dirtyRect
{
    [super drawRect:dirtyRect];

    [[NSColor redColor] set];
    NSRectFill(NSMakeRect(10, 200, 10, 10));

    NSPoint pos[5] = {
        NSMakePoint(40, 40),
        NSMakePoint(40 + 10, 40 + 10),
        NSMakePoint(40 + 20, 40 + 20),
        NSMakePoint(40 + 10, 40 + 30),
        NSMakePoint(40 +  0, 40 + 40),
    };
    
    NSColor *colors[5] = {
        [NSColor blackColor],
        [NSColor redColor],
        [NSColor greenColor],
        [NSColor blueColor],
        [NSColor yellowColor],
    };
    
    for (int i=0;i<5; i++) {
        NSPoint pt0 = pos[i];
        NSPoint pt1 = pos[i];
        pt1.x += 100;
        [colors[i] set];
        [NSBezierPath strokeLineFromPoint:pt0 toPoint:pt1];
    }
}
@end
