#import <UIKit/UIKit.h>

%hook UnityAppController
- (void)applicationDidBecomeActive:(id)application {
    %orig;

    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"RA KURD IPA"
                                 message:@"Welcome to Yousif Duski Mods!\nJoin us for more updates."
                                 preferredStyle:UIAlertControllerStyleAlert];

    [alert addAction:[UIAlertAction actionWithTitle:@"🚀 Telegram" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://t.me/YOUSIF_DUSKI"]];
    }]];

    [alert addAction:[UIAlertAction actionWithTitle:@"📸 Instagram" style:UIAlertActionStyleDefault handler:^(UIAlertAction * action) {
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"https://instagram.com/YOUSIF_DUSKI"]];
    }]];

    [alert addAction:[UIAlertAction actionWithTitle:@"✅ Start" style:UIAlertActionStyleCancel handler:nil]];

    [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:alert animated:YES completion:nil];
}
%end
