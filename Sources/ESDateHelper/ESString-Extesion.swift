//
//  ESString+Extension.swift
//  ESDateHelper
//
//  Created by Emil Karimov on 12/06/2020
//  Copyright © 2020 ESKARIA LLC. All rights reserved.
//

import Foundation

public extension String {
    
    func toDate(fromFormat: DateFormatType) -> Date? {
        let formatter = DateFormatter()
        formatter.dateFormat = fromFormat.stringFormat
        return formatter.date(from: self)
    }
    
}
