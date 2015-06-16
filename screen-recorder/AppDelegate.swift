//
//  AppDelegate.swift
//  screen-recorder
//
//  Created by Ben Tranter on 15/06/15.
//  Copyright (c) 2015 Ben Tranter. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var window: NSWindow!
    let statusItem = NSStatusBar.systemStatusBar().statusItemWithLength(-2)

    func applicationDidFinishLaunching(aNotification: NSNotification) {
        if let button = statusItem.button {
            button.image = NSImage(named: "StatusBarButtonImage")
            button.action = Selector("printQuote")
        }
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }
    
    // Here
    func printQuote(sender: AnyObject) {
        let quoteText = "Testing the text dawg"
        let quoteAuthor = "Ben"
        
        println("\(quoteText) - \(quoteAuthor)")
    }


}

