//
//  ViewController.swift
//  craftyDateFormatter
//
//  Created by craftycoders on 05/17/2020.
//  Copyright (c) 2020 craftycoders. All rights reserved.
//

import UIKit
import craftyDateFormatter

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print(Date().formatToString(.format081420) ?? "")
        print("2020-05-14T18:25:43.511Z".formatToDate(.formatJSONFriendly1) ?? "")
        print("2020-05-14T18:25:43Z".formatToDate(.formatJSONFriendly2) ?? "")
        print("2020-05-14T18:25:43".formatToDate(.formatJSONFriendly3) ?? "")
        print("2020-05-14T18:25:43".formatToDate(.formatJSONFriendly1) ?? "")
    }

    

}

