//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

/**
 *
 * This class represents a Model. In this example, User Model can be updated when user make an authentification.
 */
class User {
    let name: String
    let email: String

    init(name: String, email: String) {
        self.name = name
        self.email = email
    }
}
