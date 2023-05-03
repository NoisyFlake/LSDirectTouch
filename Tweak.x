#import <UIKit/UIKit.h>

@interface CSQuickActionsView : UIView
-(void)handleButtonTouchBegan:(id)button;
-(void)handleButtonPress:(id)button;
@end

%hook CSQuickActionsView
-(void)handleButtonTouchBegan:(id)button {
	[self handleButtonPress:button];
}
%end