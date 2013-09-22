// The MIT License (MIT)
//
// Copyright (c) 2013 Shiny Development Ltd.
//
// Permission is hereby granted, free of charge, to any person obtaining a copy of
// this software and associated documentation files (the "Software"), to deal in
// the Software without restriction, including without limitation the rights to
// use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
// the Software, and to permit persons to whom the Software is furnished to do so,
// subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
// FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
// COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
// IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
// CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

#import "AppDelegate.h"
#import "SDScreenshotCapture.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  // This example application uses a four finger tap gesture to trigger the screenshot. You should use whatever gesture or mechanism works best with your app.
  UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapGestureRecognized:)];
  tapGesture.numberOfTouchesRequired = 4;
  [self.window addGestureRecognizer:tapGesture];

  return YES;
}

- (void)tapGestureRecognized:(UITapGestureRecognizer *)tapGesture
{
  [SDScreenshotCapture takeScreenshotToActivityViewController];

  // Alternatively, SDScreenshotCapture includes two additional methods for saving a screenshot excluding the status bar
  // [SDScreenshotCapture takeScreenshotToCameraRoll]; - Immediately store the screenshot to the camera roll, no prompt
  // [SDScreenshotCapture takeScreenshotToDocumentsDirectory]; - Immediately store the screenshot to the documents directory using the date and time as a filename
}

@end
