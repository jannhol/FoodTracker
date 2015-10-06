//
//  RatingControl.swift
//  FoodTracker
//
//  Created by Ann on 9/16/15.
//  Copyright © 2015 Ann. All rights reserved.
//

import UIKit

class RatingControl: UIView {
    
    // MARK: Properties
    var rating = 0
    
    // MARK: Initialization

    required init?(coder aDecoder: NSCoder) {
        print("Startin the party🎉")
        super.init(coder: aDecoder)
        
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 44, height: 44))
        button.backgroundColor = UIColor.redColor()
        button.addTarget(self, action: "ratingButtonTapped:", forControlEvents: .TouchDown)
        addSubview(button)
    }
    
    override func intrinsicContentSize() -> CGSize {
        return CGSize(width: 240, height: 44)
    }
    
    // MARK: Button Action

    func ratingButtonTapped(button: UIButton) {
        print("Button pressed 👍")
    }
}
