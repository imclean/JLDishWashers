//
//  JLTheme.swift
//  JLDishwasher
//
//  Created by Iain McLean on 21/12/2016.
//  Copyright © 2016 Iain McLean. All rights reserved.
//

import UIKit
import KVNProgress

public enum AppFonts: String, RawRepresentable {
    case Regular = "SFUIDisplay-Regular"
    case Bold = "SFUIDisplay-Bold"
    case Thin = "SFUIDisplay-Thin"
    case Title = "SFUIDisplay-Ultralight"
}

class JLTheme {
    static let sharedTheme = JLTheme()
    
    public func jlWhite() -> UIColor {
        return UIColor.white
    }
    
    public func jlBlack() -> UIColor {
        return UIColor(red:0.13, green:0.13, blue:0.13, alpha:1)
    }
    
    public func jlGrey() -> UIColor {
        return UIColor(red:0.33, green:0.33, blue:0.33, alpha:1.00)
    }
    
    public func jlMainFontNameRegular() -> String {
        return AppFonts.Regular.rawValue
    }
    
    public func jlMainFontNameBold() -> String {
        return AppFonts.Bold.rawValue
    }
    
    public func jlMainFontNameItalic() -> String {
        return AppFonts.Thin.rawValue
    }
    
    public func jlTitleFontName() -> String {
        return AppFonts.Title.rawValue
    }
    
    // MARK:- Application
    public func applyJLTheme(window:UIWindow) {
        window.backgroundColor = jlWhite()
        UINavigationBar.appearance().tintColor = jlBlack()
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName:jlBlack(),NSFontAttributeName:UIFont(name: jlTitleFontName(), size: 24)!]
        UIBarButtonItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName:jlBlack(),NSFontAttributeName:UIFont(name: jlTitleFontName(), size: 18)!], for: .normal)
        UIBarButtonItem.appearance().setTitleTextAttributes([NSForegroundColorAttributeName:jlGrey(),NSFontAttributeName:UIFont(name: jlTitleFontName(), size: 18)!], for:.disabled)
        setupKVNProgressTheme()
        UIApplication.shared.isIdleTimerDisabled = false
    }
    
    // MARK:- KVN Setup
    public func setupKVNProgressTheme() {
        let configuration = KVNProgressConfiguration()
        configuration.statusColor = UIColor.white
        configuration.statusFont = UIFont(name: AppFonts.Bold.rawValue, size: 16)
        configuration.circleStrokeForegroundColor = UIColor.white
        configuration.circleStrokeBackgroundColor = UIColor(white: 1.0, alpha: 0.3)
        configuration.circleFillBackgroundColor = UIColor(white: 1.0, alpha: 0.1)
        configuration.backgroundFillColor = jlGrey()
        configuration.backgroundTintColor = jlGrey()
        configuration.successColor = UIColor.white
        configuration.errorColor = UIColor.white
        configuration.stopColor = UIColor.white
        configuration.circleSize = 110.0
        configuration.lineWidth = 1.0
        configuration.isFullScreen = false
        configuration.doesShowStop = false
        configuration.stopRelativeHeight = 0.4
        configuration.minimumDisplayTime = 0.5
        configuration.minimumErrorDisplayTime = 1.5
        configuration.minimumSuccessDisplayTime = 1.5
        KVNProgress.setConfiguration(configuration)
    }
}
