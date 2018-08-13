//
//  MyScrollView.m
//  MyScrollView
//
//  Created by Bennett on 2018-08-13.
//  Copyright © 2018 Bennett. All rights reserved.
//

#import "MyScrollView.h"

@interface MyScrollView()
@property (nonatomic, assign) CGSize contentSize;
@property (nonatomic, strong)UIPanGestureRecognizer *gestureRecognizer;
@end

@implementation MyScrollView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _contentSize = frame.size;
        
        _gestureRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(moveScrollView:)];
        [self addGestureRecognizer:_gestureRecognizer];
    }
    return self;
}

-(void)moveScrollView:(UIPanGestureRecognizer*) sender{
    
    CGPoint translation = [sender translationInView:self];
    
    CGFloat newX = self.bounds.origin.x + translation.x;
    CGFloat newY = self.bounds.origin.y + translation.y;
    
    if (newX < 0)
        newX = 0;
    else if (newX + self.superview.frame.size.width > self.contentSize.width )
        newX = self.contentSize.width - self.superview.frame.size.width;

    if (newY < 0)
        newY = 0;
    else if (newY + self.superview.frame.size.height > self.contentSize.height )
        newY = self.contentSize.height - self.superview.frame.size.height;
    NSLog (@"new X %f and Y %f", newX, newY);
    
    [self setBounds:CGRectMake(newX, newY, self.bounds.size.width, self.bounds.size.height)];
    
    [sender setTranslation:CGPointZero inView:self];
}

@end
