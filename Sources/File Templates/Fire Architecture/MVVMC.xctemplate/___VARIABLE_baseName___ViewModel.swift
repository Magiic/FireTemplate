//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation

protocol ___FILEBASENAMEASIDENTIFIER___Delegate: AnyObject {

}

protocol ___FILEBASENAMEASIDENTIFIER___: AnyObject {
    var delegate: ___FILEBASENAMEASIDENTIFIER___Delegate? { get set }
}

final class ___FILEBASENAMEASIDENTIFIER___Impl: ___FILEBASENAMEASIDENTIFIER___ {

    weak var delegate: ___FILEBASENAMEASIDENTIFIER___Delegate?

    init() {

    }
}
