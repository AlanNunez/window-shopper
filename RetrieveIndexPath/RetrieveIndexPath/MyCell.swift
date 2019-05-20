//
//  MyCell.swift
//  RetrieveIndexPath
//
//  Created by Desarrollo on 5/20/19.
//  Copyright © 2019 Dev Core. All rights reserved.
//

import UIKit

class MyCell: UITableViewCell {
    
    @IBOutlet weak var clickMe: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        clickMe.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
    }
    var buttonAction: ((Any) -> Void)?
    
    @objc func buttonPressed(sender: Any) {
        self.buttonAction?(sender)
    }
}
