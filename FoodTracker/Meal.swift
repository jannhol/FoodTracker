//
//  Meal .swift
//  FoodTracker
//
//  Created by Ann on 9/19/15.
//  Copyright © 2015 Ann. All rights reserved.
//

import UIKit

class Meal {
    
    // Mark Properties 
    
    var name: String
    var photo: UIImage?
    var rating: Int
    
    // Mark Initialization
    
    init?(name: String, photo: UIImage?, rating: Int) {
        
        // Initialize stored properties 
        self.name = name
        self.photo = photo
        self.rating = rating
        
        // Initialization should fail if there no name or the rating is negative 
        if name.isEmpty || rating < 0 {
            return nil
        }
    }
}