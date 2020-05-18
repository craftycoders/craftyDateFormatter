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
        print(Date().formatToString(.monthDayYear) ?? "")
        print("2020-05-14T18:25:43.511Z".formatToDate(.jsonFriendly1) ?? "")
        print("2020-05-14T18:25:43Z".formatToDate(.jsonFriendly2) ?? "")
        print("2020-05-14T18:25:43".formatToDate(.jsonFriendly3) ?? "")
        print("2020-05-14T18:25:43".formatToDate(.jsonFriendly1) ?? "")
    }

    

}

