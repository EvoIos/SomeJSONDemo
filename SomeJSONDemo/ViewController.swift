//
//  ViewController.swift
//  SomeJSONDemo
//
//  Created by z on 16/6/1.
//  Copyright © 2016年 LC. All rights reserved.
//

import UIKit
import Argo


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //MARK: MJExtension
        let filePath = NSBundle.mainBundle().pathForResource("data", ofType: "json")
        let contentData = NSFileManager.defaultManager().contentsAtPath(filePath!)
        let content = NSString(data: contentData!, encoding: NSUTF8StringEncoding) as? String
        let model = Model.mj_objectWithKeyValues(content)
        print(model.author[0].ID)
        
        //Argo
        let json = JSONFromFile("data")
        let argoModel: SwiftModel = json.flatMap(decode)!
        print(argoModel.author[0].name)
    
    }

    func JSONFromFile(file: String) -> AnyObject? {
        return NSBundle.mainBundle().pathForResource(file, ofType: "json")
            .flatMap { NSData(contentsOfFile: $0) }
            .flatMap(JSONObjectWithData)
    }
    
    func JSONObjectWithData(data: NSData) -> AnyObject? {
        do { return try NSJSONSerialization.JSONObjectWithData(data, options: []) }
        catch { return .None }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

