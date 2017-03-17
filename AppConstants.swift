//
//  AppConstants.swift
//  iHiho
//
//  Created by zhoucan on 2016/9/6.
//  Copyright © 2016年 Ruiju. All rights reserved.
//

import Foundation
import UIKit

// 获取默认的 Realm 数据库

struct UIConstant {
    // 屏幕宽高
    static let IPHONE6_WIDTH : CGFloat = 375
    static let IPHONE6_HEIGHT : CGFloat = 667
    static let IPHONE5_WIDTH : CGFloat = 320
    static let IPHONE5_HEIGHT : CGFloat = 568
    static let SCREEN_WIDTH : CGFloat = UIScreen.main.bounds.width
    static let SCREEN_HEIGHT : CGFloat = UIScreen.main.bounds.height
    // 导航栏高度
    static let UI_NAV_HEIGHT : CGFloat = 64
    // tab高度
    static let UI_TAB_HEIGHT : CGFloat = 49
}


enum App {
    
    // MARK: AppKey+AppSecret
    enum Key:String {
        //极光key
        case jpushAppKey  = "851b1aeee0cc7b80d3c388ba"
        //极光channel
        case jpushChannel  = "Publish channel"
        
        case smsSDKKey = "103733bef499e"
        
        case smsSDKSecret = "b90ce375803552b61fa57fa506166183"
        
        case ezOpenSDKKey = "aa305022a8bd4b9e89e63cd7e18cda7b"
        
        //蒲公英上睿居的appID
        case PgyerAPPID = "dc757ec0eb874458cca7aa37d85484c3"
        
        //MagicSDK Appkey appSecret
        
        case magicKey = "58a500ba4894fa99c03e3475"
        
        case magicSecret = "VRNLiHw3oDbXKyX4yBh1DAf2lJTkl8c8"
        
        
        
    }
    
    
    /// settingBundle Key
    ///
    /// - version: 版本
    /// - build:  bulid号
    /// - oemCode: oemCode
    enum settingBundleIdentifer:String {
        case version = "versionIdentifer"
        case build = "buildIdentifer"
        case oemCode = "rjoemIdentifer"
    }
    
    
    /// NotificationName描述
    ///
    /// - userLogout: 退出登录
    /// - userLoginSuccess: 登录成功
    /// - deviceListDataChange: 设备数据变化
    /// - stateChangeNotificationName: stateChange
    /// - tabbarVCInitNotice: tabbarVCInit
    /// - alarmPushNoticeName: 报警推送
    /// - languageChangeNotice: 切换语言
    /// - addYSCameraNotice: 添加萤石摄像头成功
    enum NotificationName:String {
        case userLogout = "HMUserLogoutNotification"
        case userLoginSuccess = "HMUserLoginSuccessNotification"
        case deviceListDataChange = "HMDeviceListDataChange"
        case stateChangeNotificationName = "stateChangeNotificationName"
        case tabbarVCInitNotice = "HMtabbarVCInitNotice"
        case alarmPushNoticeName = "alarmPushNoticeName"
        case languageChangeNotice = "languageChangeNotice"
        case addYSCameraNotice = "addYSCameraNotice"
        case refreshHomeNotice = "DeviceChangerefreshHomeNotice"
        case SencerefreshHomeNotice = "SenceChangerefreshHomeNotice"
    }
    
    
    enum HMRequsetPath:String {
        case ruleEnable = "rule/control/setEnabled"
        case getNonTimedSceneList = "scene/control/getNonTimedSceneList"
        //非定时场景列表]
//        case creatNonTimeList =
//        case updateNonTimedList = 
        case addSceneToDesktop = "scene/control/addSceneToDesktop"
        case removeSceneFromDesktop = "scene/control/removeSceneFromDesktop"
        case queryAllScenesOnDesktop = "scene/control/queryAllScenesOnDesktop"
        case setEnabled = "scene/control/setEnabled"
        case deleteScene = "scene/control/deleteScene"
        case executeScene = "scene/control/executeScene"
        
        //上传Icon
        case updateSceneIcon = "scene/control/updateSceneIcon"
        case getSceneIcon = "scene/control/getSceneIcon"
        
        
        //创建感知场景
    case createPerceptiveSceneFull = "scene/control/createPerceptiveSceneFull"
        
        //修改感知场景
    case updatePerceptiveSceneFull = "scene/control/updatePerceptiveSceneFull"
        
        //获得感知场景列表
    case getPerceptiveSceneList = "scene/control/getPerceptiveSceneList"
        
        
        
        
        
        
        //判断版本号
        case checkUpdate = "system/control/checkAppVersion"
        
        //获得开通萤石云的手机验证码
        case getOpenYSServiceSmsCode = "system/control/getOpenYSServiceSmsCode"
        
        //开通萤石云
        case openYSService = "system/control/openYSService"
        
        //删除设备记录
        case removeDevice = "interface/control/removeDevice"
        
        //查询设备状态数据集
        case queryDeviceStateCollection = "interface/control/queryDeviceStateCollection"
        
        //查询设备报警状态
        case queryDeviceAlarmState = "interface/control/queryDeviceAlarmState"
        
        //创建子帐号
        case createSubuser = "system/control/createSubuser"
        
        //删除子帐号
        case deleteSubuser = "system/control/deleteSubuser"
        
        //查询子帐号
        case findSubuserList = "system/control/findSubusers"
        
        //编辑子帐号
        case updateSubuser = "system/control/updateSubuser"
        
        
        
    }
    
    //萤石存储路径Path
    enum MediaPath:String {
        case imagePath = "/RJ/LocalImageCaChe"
        case videoPath = "/RJ/LocalRecordCaChe"
    }
  
    enum EZOpenSDKAPiURL:String {
        case host = "https://open.ys7.com"//萤石Host
        case jingtoustatus = "/api/lapp/device/scene/switch/status" //获取镜头遮蔽开关状态
        case jingtouset = "/api/lapp/device/scene/switch/set" //设置镜头遮蔽开关
        
        case sslStatus = "/api/lapp/device/ssl/switch/status" //获取声源定位开关状态
        case lappSet = "/api/lapp/device/ssl/switch/set" //设置声源定位开关
        
        //添加好友
         case addFriend = "/api/lapp/friend/add"
        
        //获取验证好友邀请列表
         case addFriendList = "/api/lapp/friend/invite/list"
        
        
        //获取好友邀请列表
        case friendList = "/api/lapp/friend/list"
        
        //接受好友邀请
         case acceptAddFriend = "/api/lapp/friend/accept"
        
        
        //添加分享
        case addShare = "/api/lapp/share/add"
        
        //删除分享分享id列表
        case shareList = "/api/lapp/share/list"
        
        //删除分享
        case deleteShare = "/api/lapp/share/delete"
        
        
        
        
    }
    
    
    
    
    
}
