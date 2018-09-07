//
//  TencentCaptchaModule.m
//  ErosPluginUMAnalytics
//
//  Created by XHY on 2018/7/18.
//

#import "TencentCaptchaModule.h"
#import <WeexPluginLoader/WeexPluginLoader/WeexPluginLoader.h>
// 腾讯验证
#import <TCWebCodesSDK/TCWebCodesBridge.h>

WX_PlUGIN_EXPORT_MODULE(tencentCaptcha, TencentCaptchaModule)

@implementation TencentCaptchaModule

@synthesize weexInstance;

WX_EXPORT_METHOD(@selector(showCaptcha:))

/** 初始化友盟方法 */
- (void)showCaptcha:(NSString *)appkey successCallback:(WXModuleCallback)successCallback
{
    /* 初始化友盟组件 */
    // [UMConfigure initWithAppkey:appkey channel:nil];

    /**
	@param appid，在验证码接入平台注册申请；
	@param callback，为回调函数，验证码验证完成后回调该函数将结果带回
	*/
	[[TCWebCodesBridge sharedBridge]loadTencentCaptcha:self.view appid:appkey callback:^(NSDictionary *resultJSON) {
	    if(0==[resultJSON[@"ret"] intValue]) {
	        /**
	        验证成功
	        返回内容：
	        resultJSON[@"appid"]为回传的业务appid
	        resultJSON[@"ticket"]为验证码票据
	        resultJSON[@"randstr"]为随机串
	        */
	    } else {
	        /**
	        验证失败
	        返回内容：
	        ret=-1001为验证码js加载错误
	        ret=-1002一般为网络错误
	        ret=-1为返回票据数据解析错误，业务可根据需要重试处理
	        ret的其他返回值，为验证失败，比如用户主动关闭了验证码弹框
	        */
	    }

	    /* 成功回调 */
        if (successCallback) {
            successCallback(resultJSON);
        }

	}];

}

@end
