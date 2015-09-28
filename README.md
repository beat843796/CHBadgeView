CHBadgeView
=================

![Alt text](/badge.jpeg "Screenshot")

About
---------
_CHBadgeView_ is a simple badge view for ios and is influenced by the badge used in the application Instagram. The badge is completely drawn in drawRect: and can be scaled to any size.


Usage
---------

1. Add the _CHBadgeView.h_ and _ChBadView.m_ files to your project.

3. Create and configure your badge and add it to your view hierachy.

`self.badgeView = [[CHBadgeView alloc] init];
[self.view addSubview:_badgeView1];
_badgeView.badgeBorderColor = [UIColor blueColor];
_badgeView.badgeColor = [UIColor blackColor];
_badgeView.badgeBorderWidth =0.5f;
_badgeView.drawBadgeBorder = YES;
_badgeView.badgeCornerRadius = 4.0;
_badgeView.bottomArrowHeight = 10.0f;
_badgeView.badgeLabel.text = @" 1";`

Check the demo project for more examples of possible configurations


Cocoapods
-------
CocoaPods are the best way to manage library dependencies in Objective-C projects.
Learn more at http://cocoapods.org

Add this to your podfile to add the CHBadgeView to your project:<br /> `pod 'CHBadgeView', '~> 1.0'`


What to Expect in Future Updates
-----------

+ More customization options

+ The ability to insert images into badges.


License
--------
_CHBadgeView uses the MIT License:

>Copyright (c) 2013, Mainloop LLC

>Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

>The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

>THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

Credits
---------

_CHBadgeView_ was written by Clemens Hammerl.