//
//  ViewController.swift
//  Kitten
//
//  Created by Jason Idris on 5/12/18.
//  Copyright © 2018 Jason Idris. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        #if DEBUG
        Bundle(path: "/Applications/InjectionIII.app/Contents/Resources/iOSInjection.bundle")?.load()
        #endif

        let broadcastButton = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
        broadcastButton.center = CGPoint(x: self.view.center.x, y: 250)
        broadcastButton.setTitle("Broadcast", for: .normal)
        broadcastButton.setTitleColor(UIColor.black, for: .normal)
        broadcastButton.isUserInteractionEnabled = true
        broadcastButton.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.broadcastTap(_:))))
        self.view.addSubview(broadcastButton)
        
        let watchButton = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
        watchButton.center = CGPoint(x: self.view.center.x, y: 200)
        watchButton.setTitle("Watch", for: .normal)
        watchButton.setTitleColor(UIColor.black, for: .normal)
        watchButton.isUserInteractionEnabled = true
        watchButton.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.watchTap(_:))))
        self.view.addSubview(watchButton)
        
        let infoLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
        infoLabel.textColor = UIColor.lightGray
        infoLabel.center = CGPoint(x: self.view.center.x, y: 600)
        infoLabel.textAlignment = .center
        infoLabel.text = "Kitten v2 Core App"
        self.view.addSubview(infoLabel)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func watchTap(_ sender: UITapGestureRecognizer) {
        print("Watch button tapped")
        
        let alert = UIAlertController(title: "Watch a Stream", message: "Please input a stream code", preferredStyle: UIAlertControllerStyle.alert)
        
        let action = UIAlertAction(title: "I'm done!", style: .default) { (alertAction) in
            let textField = alert.textFields![0] as UITextField
            print("You want to watch the stream under the stream code \(String(describing: textField.text))")
        }
        
        alert.addTextField { (textField) in
            textField.placeholder = "Enter stream code"
        }
        
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
    }
    
    @objc func broadcastTap(_ sender: UITapGestureRecognizer) {
        print("Broadcast button tapped")
        
        let alert = UIAlertController(title: "Start Broadcasting", message: "Please choose a stream code", preferredStyle: UIAlertControllerStyle.alert)
        
        let action = UIAlertAction(title: "I'm done!", style: .default) { (alertAction) in
            let textField = alert.textFields![0] as UITextField
            print("You want to broadcast under the stream code \(String(describing: textField.text))")
        }
        
        alert.addTextField { (textField) in
            textField.placeholder = "Enter stream code"
        }
        
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
    }

}

