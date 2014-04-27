//
//  MyView2.m
//  AffineTransformStudy001
//
//  Created by 布川祐人 on 2014/04/27.
//  Copyright (c) 2014年 NUNOKAWA Masato. All rights reserved.
//

#import "MyView2.h"

@implementation MyView2

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
    //
    // ------------
    //    ------------
    //        ------------
    //    ------------
    // ------------
    //
    
    // ↑ こんな感じのを AffineTransformの concatで実現する
    
    // MEMO : NSAffineTransformも NSColorと同じように「現在のコンテキストに対して影響をおよぼす」もの。
    //        いまひとつ想像しにくい。慣れなんだろうか
    
    [super drawRect:dirtyRect];
    
    [[NSColor greenColor] set];
    NSRectFill(NSMakeRect(10, 220, 10, 10));

    NSAffineTransform *trans0 = [NSAffineTransform transform];
    NSAffineTransform *trans1 = [NSAffineTransform transform];
    NSAffineTransform *trans2 = [NSAffineTransform transform];

    [trans0 translateXBy: 40 yBy: 40];
    [trans1 translateXBy: 10 yBy: 10];
    [trans2 translateXBy:-10 yBy: 10];
    
    // 原点移動
    [trans0 concat];

    [self drawLineWithColor:[NSColor blackColor]];
    
    [trans1 concat];
    [self drawLineWithColor:[NSColor redColor]];
    
    [trans1 concat];
    [self drawLineWithColor:[NSColor greenColor]];
    
    [trans2 concat];
    [self drawLineWithColor:[NSColor blueColor]];
    
    [trans2 concat];
    [self drawLineWithColor:[NSColor yellowColor]];
}

-(void)drawLineWithColor:(NSColor*)color
{
    [color set];
    [NSBezierPath strokeLineFromPoint:NSZeroPoint toPoint:NSMakePoint(100, 0)];
}

@end
