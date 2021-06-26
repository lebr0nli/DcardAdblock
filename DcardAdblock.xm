// See http://iphonedevwiki.net/index.php/Logos

#if TARGET_OS_SIMULATOR
#error Do not support the simulator, please use the real iPhone Device.
#endif

#import <UIKit/UIKit.h>


@interface _TtC5Dcard12NativeAdCell: NSObject
@end

@interface _TtC5Dcard11TuWenAdCell: NSObject
@end

%hook _TtC5Dcard12NativeAdCell
- (id)init
{
    %log;
    NSLog (@"HOOK _TtC5Dcard12NativeAdCell.init");
    id cell = %orig;
    [cell setAlpha:0];
    [cell setHidden:YES];
    [cell setFrame:CGRectMake(0,0,0,0)];
    NSLog (@"HOOK cell:%@", cell);
    return cell;
}
- (id)initWithCoder:(id)arg1
{
    %log;
    NSLog (@"HOOK _TtC5Dcard12NativeAdCell.initWithCoder arg1: %@", arg1);
    id cell = %orig;
    [cell setAlpha:0];
    [cell setHidden:YES];
    [cell setFrame:CGRectMake(0,0,0,0)];
    NSLog (@"HOOK cell:%@", cell);
    return cell;
}
- (void)willMoveToWindow:(id)arg1
{
    %log;
    NSLog (@"HOOK _TtC5Dcard12NativeAdCell.willMoveToWindow arg1: %@", arg1);
    %orig(nil);
}
- (void)handleNativeAdSizeChanged:(id)arg1
{
    %log;
    NSLog (@"HOOK _TtC5Dcard12NativeAdCell.handleNativeAdSizeChanged arg1: %@", arg1);
    %orig(nil);
}
%end


%hook _TtC5Dcard11TuWenAdCell
- (id)initWithCoder:(id)arg1
{
    %log;
    NSLog (@"HOOK TuWenAdCell initWithCoder arg1: %@", arg1);
    id cell = %orig;
    [cell setAlpha:0];
    [cell setHidden:YES];
    [cell setFrame:CGRectMake(0,0,0,0)];
    NSLog (@"HOOK cell:%@", cell);
    return cell;
}
- (id)initWithStyle:(long long)arg1 reuseIdentifier:(id)arg2
{
    %log;
    NSLog (@"HOOK TuWenAdCell initWithStyle arg1: %lld", arg1);
    NSLog (@"HOOK TuWenAdCell initWithStyle arg2: %@", arg2);
    id cell = %orig;
    [cell setAlpha:0];
    [cell setHidden:YES];
    [cell setFrame:CGRectMake(0,0,0,0)];
    NSLog (@"HOOK cell:%@", cell);
    return cell;
}
- (void)handleNativeAdSizeChangedWithNotification:(id)arg1
{
    %log;
    NSLog (@"HOOK handleNativeAdSizeChangedWithNotification arg1: %@", arg1);
    %orig(nil);
}
%end


