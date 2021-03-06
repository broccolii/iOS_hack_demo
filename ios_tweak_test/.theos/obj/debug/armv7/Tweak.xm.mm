#line 1 "Tweak.xm"

#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class ViewController; 
static void (*_logos_orig$_ungrouped$ViewController$changeBackgroundColor)(_LOGOS_SELF_TYPE_NORMAL ViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$ViewController$changeBackgroundColor(_LOGOS_SELF_TYPE_NORMAL ViewController* _LOGOS_SELF_CONST, SEL); 

#line 1 "Tweak.xm"
#import "ViewController.h"


static void _logos_method$_ungrouped$ViewController$changeBackgroundColor(_LOGOS_SELF_TYPE_NORMAL ViewController* _LOGOS_SELF_CONST self, SEL _cmd) {
    self.view.backgroundColor = [UIColor blueColor];  
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$ViewController = objc_getClass("ViewController"); if (_logos_class$_ungrouped$ViewController) {MSHookMessageEx(_logos_class$_ungrouped$ViewController, @selector(changeBackgroundColor), (IMP)&_logos_method$_ungrouped$ViewController$changeBackgroundColor, (IMP*)&_logos_orig$_ungrouped$ViewController$changeBackgroundColor);} else {HBLogError(@"logos: nil class %s", "ViewController");}} }
#line 9 "Tweak.xm"
