//
//  UIView+UIView_Constraints.m
//  WootricSDK
//
// Copyright (c) 2015 Wootric (https://wootric.com)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#import "UIView+Constraints.h"

@implementation UIView (Constraints)

- (NSLayoutConstraint *)top {
  UIView *emptyView = [[UIView alloc] init];
  NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self
                                                                attribute:NSLayoutAttributeTop
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:emptyView
                                                                attribute:NSLayoutAttributeTop
                                                               multiplier:1
                                                                 constant:0];
  return constraint;
}

- (NSLayoutConstraint *)bottom {
  UIView *emptyView = [[UIView alloc] init];
  NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self
                                                                attribute:NSLayoutAttributeBottom
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:emptyView
                                                                attribute:NSLayoutAttributeBottom
                                                               multiplier:1
                                                                 constant:0];
  return constraint;
}

- (NSLayoutConstraint *)left {
  UIView *emptyView = [[UIView alloc] init];
  NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self
                                                                attribute:NSLayoutAttributeLeft
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:emptyView
                                                                attribute:NSLayoutAttributeLeft
                                                               multiplier:1
                                                                 constant:0];
  return constraint;
}

- (NSLayoutConstraint *)right {
  UIView *emptyView = [[UIView alloc] init];
  NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self
                                                                attribute:NSLayoutAttributeRight
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:emptyView
                                                                attribute:NSLayoutAttributeRight
                                                               multiplier:1
                                                                 constant:0];
  return constraint;
}

- (NSLayoutConstraint *)centerX {
  UIView *emptyView = [[UIView alloc] init];
  NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self
                                                                attribute:NSLayoutAttributeCenterX
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:emptyView
                                                                attribute:NSLayoutAttributeCenterX
                                                               multiplier:1
                                                                 constant:0];
  return constraint;
}

- (NSLayoutConstraint *)centerY {
  UIView *emptyView = [[UIView alloc] init];
  NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self
                                                                attribute:NSLayoutAttributeCenterY
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:emptyView
                                                                attribute:NSLayoutAttributeCenterY
                                                               multiplier:1
                                                                 constant:0];
  return constraint;
}

- (void)constraintHeight:(CGFloat)height {
  NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self
                                                                attribute:NSLayoutAttributeHeight
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:nil
                                                                attribute:NSLayoutAttributeNotAnAttribute
                                                               multiplier:1
                                                                 constant:height];

  [self addConstraint:constraint];
}

- (void)constraintWidth:(CGFloat)width {
  NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self
                                                                attribute:NSLayoutAttributeWidth
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:nil
                                                                attribute:NSLayoutAttributeNotAnAttribute
                                                               multiplier:1
                                                                 constant:width];

  [self addConstraint:constraint];
}

- (void)constraintHeightEqualSecondViewHeight:(UIView *)secondView {
  NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self
                                                                attribute:NSLayoutAttributeHeight
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:secondView
                                                                attribute:NSLayoutAttributeHeight
                                                               multiplier:1
                                                                 constant:0];

  [secondView addConstraint:constraint];
}

- (void)constraintWidthEqualSecondViewWidth:(UIView *)secondView {
  NSLayoutConstraint *constraint = [NSLayoutConstraint constraintWithItem:self
                                                                attribute:NSLayoutAttributeWidth
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:secondView
                                                                attribute:NSLayoutAttributeWidth
                                                               multiplier:1
                                                                 constant:0];

  [secondView addConstraint:constraint];
}

@end
