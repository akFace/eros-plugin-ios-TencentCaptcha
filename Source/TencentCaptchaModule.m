
#import "TencentCaptchaModule.h"
#import <WeexPluginLoader/WeexPluginLoader/WeexPluginLoader.h>
// 腾讯验证
#import <TCWebCodesSDK/TCWebCodesBridge.h>

WX_PlUGIN_EXPORT_MODULE(tencentCaptcha, TencentCaptchaModule)

@implementation TencentCaptchaModule

@synthesize weexInstance;

WX_EXPORT_METHOD(@selector(showCaptcha:successCallback:))

/** 加载腾讯验证码 */
- (void)showCaptcha:(NSString *)appkey successCallback:(WXModuleCallback)successCallback
{
    // 加载腾讯验证码
    [[TCWebCodesBridge sharedBridge] loadTencentCaptcha:self.weexInstance.viewController.view appid:appkey callback:^(NSDictionary *resultJSON) { // appid在验证码接入平台注册申请，此处的1234为测试用appid
        successCallback(resultJSON);
    }];
    
}
@end
