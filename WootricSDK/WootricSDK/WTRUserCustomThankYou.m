//
//  WTRUserCustomThankYou.h
//  WootricSDK
//
// Copyright (c) 2019 Wootric (https://wootric.com)
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

#import "WTRUserCustomThankYou.h"

@implementation WTRUserCustomThankYou

- (BOOL)userCustomThankYouMainPresent {
  if (_thankYouMain || _detractorThankYouMain || _passiveThankYouMain || _promoterThankYouMain) {
    return YES;
  }
  
  return NO;
}

- (BOOL)userCustomThankYouSetupPresent {
  if (_thankYouSetup || _detractorThankYouSetup || _passiveThankYouSetup || _promoterThankYouSetup) {
    return YES;
  }
  
  return NO;
}

- (BOOL)userCustomLinkPresent {
  if (_thankYouLinkText || _detractorThankYouLinkText || _passiveThankYouLinkText || _promoterThankYouLinkText) {
    return YES;
  }
  
  return NO;
}

- (BOOL)hasShareConfiguration {
  return (_promoterThankYouLinkText && _promoterThankYouLinkURL);
}

@end
