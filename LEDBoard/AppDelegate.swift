//
//  AppDelegate.swift
//  LEDBoard
//
//  Created by 강민혜 on 7/6/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }
    
    // background 키워드로 추가한 함수
    func applicationDidEnterBackground(_ application: UIApplication) {
        // melon, youtube - 사용자가 프리미엄 결제 했으면 play, 아니면 일시 정지
        
    }
    
    // foreground 키워드로 추가한 함수
    func applicationWillEnterForeground(_ application: UIApplication) {
        // youtube - 결제 안 한 사람에게 팝업창 띄워!
        // kakaotalk - 일정시간 이후에 들어가면 로그인 같은거 다시해라?
        // 금융앱 - 보안관련 알림 띄움ㄷ, app switcher
    }

    // MARK: UISceneSession Lifecycle
    @available(iOS 13.0, *)
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    @available(iOS 13.0, *)
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

