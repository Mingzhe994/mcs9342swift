//
//  showText.swift
//  Magic 8 Ball
//
//  Created by Stuart on 3/05/2016.
//  Copyright © 2016 Stuart. All rights reserved.
//

import Foundation
import UIKit

class ShowTextViewController:UIViewController{
    
    
    @IBOutlet weak var showText: UILabel!
    var showTheText:String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showText.text = showTheText
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}