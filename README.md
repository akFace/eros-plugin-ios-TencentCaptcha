# eros-plugin-ios-TencentCaptcha
Eros 腾讯防水墙插件 
## 集成
- 1、在iOS项目文件夹的`Podfile`中添加以下代码，然后执行 `pod update`
```
pod 'TencentCaptcha', :git => 'https://github.com/kang558/eros-plugin-ios-TencentCaptcha.git', :tag => '0.0.2'
```
- 2、需要在项目中导入腾讯SDK文件 [https://007.qq.com/ios-access.html?ADTAG=acces.cfg](https://007.qq.com/ios-access.html?ADTAG=acces.cfg)，导入SDK方法自行百度或google 


## 使用方法
```
const tencentCaptcha = weex.requireModule('tencentCaptcha');
  
tencentCaptcha.showCaptcha('appid', (result) => {
  if (result.ret === 0) {
     // 验证成功
  } else {
      // 验证失败
  }
});
```

## 更新日志

0.0.2 

* bugfix;
