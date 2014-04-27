//
//  MyView3.m
//  AffineTransformStudy001
//
//  Created by 布川祐人 on 2014/04/27.
//  Copyright (c) 2014年 NUNOKAWA Masato. All rights reserved.
//

#import "MyView3.h"

@implementation MyView3

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
    // 使い方を間違っている例
    
    [super drawRect:dirtyRect];
    
    [[NSColor blueColor] set];
    NSRectFill(NSMakeRect(10, 240, 10, 10));
    
    NSAffineTransform *trans = [NSAffineTransform transform];
    
    // 原点移動
    [trans translateXBy: 40 yBy: 40];
    [trans concat];
    
    [self drawLineWithColor:[NSColor blackColor]];
    
    [trans translateXBy: 10 yBy: 10];
    [trans concat];
    [self drawLineWithColor:[NSColor redColor]];
    
    [trans translateXBy: 10 yBy: 10];
    [trans concat];
    [self drawLineWithColor:[NSColor greenColor]];
    
    [trans translateXBy: -10 yBy: -10];
    [trans concat];
    [self drawLineWithColor:[NSColor blueColor]];
    
    [trans translateXBy: -10 yBy: -10];
    [trans concat];
    [self drawLineWithColor:[NSColor yellowColor]];
}

-(void)drawLineWithColor:(NSColor*)color
{
    [color set];
    [NSBezierPath strokeLineFromPoint:NSZeroPoint toPoint:NSMakePoint(100, 0)];
}

@end
