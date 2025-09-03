//
//  Validatable.swift
//  Validator
//
//  Created by Deniz Adalar on 28/04/16.
//  Copyright © 2016 jpotts18. All rights reserved.
//

import Foundation
import UIKit

public typealias ValidatableField = AnyObject & Validatable

public protocol Validatable {
    
    var validationText: String {
        get
    }
}

extension UITextField: @MainActor Validatable {
    
    open var validationText: String {
        return text ?? ""
    }
}

extension UITextView: @MainActor Validatable {
    
    public var validationText: String {
        return text ?? ""
    }
}

