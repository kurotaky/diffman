//
//  AppDelegate.swift
//  diffman
//
//  Created by usr0600244 on 2015/10/19.
//  Copyright © 2015年 mo-fu.org. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!

    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }

    @IBOutlet var leftTextField: NSTextView!
    @IBOutlet var rightTextField: NSTextView!
    @IBOutlet var resultTextField: NSTextView!

    @IBAction func unionButtonDidpush(sender: NSButton) {
        let leftText: String = leftTextField.string!
        let leftDataArray: [String] = leftText.componentsSeparatedByString("\n")
        let leftDataSet = Set(leftDataArray)
        let rightText: String = rightTextField.string!
        let rightDataArray: [String] = rightText.componentsSeparatedByString("\n")
        let rightDataSet = Set(rightDataArray)
        let resultDataSet = leftDataSet.intersect(rightDataSet)
        resultTextField.string = resultDataSet.joinWithSeparator("\n")
    }
}

