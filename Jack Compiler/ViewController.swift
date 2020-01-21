//
//  ViewController.swift
//  Jack Compiler
//
//  Created by Fedor on 1/21/20.
//  Copyright © 2020 Ted Kostylev. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    @IBAction func selectCodeFile(_ sender: NSButton) {
        let openPanel = NSOpenPanel()
        openPanel.allowsMultipleSelection = false
        openPanel.canChooseDirectories    = false
        openPanel.canCreateDirectories    = false
        openPanel.canChooseFiles          = true
        guard let currentWindow = sender.window else {fatalError("How?")}
        openPanel.beginSheetModal(for: currentWindow, completionHandler: { (result) -> Void in
            if result == .OK {
                let fileContents = try! String(contentsOf: openPanel.url!)
                print(fileContents)
            }
        })
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

