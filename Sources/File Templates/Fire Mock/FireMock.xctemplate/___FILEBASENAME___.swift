//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit
import FireMock

enum ___FILEBASENAMEASIDENTIFIER___: Int, FireMockProtocol {

    case success
    case successNoContent
    case failed

    var bundle: Bundle { return Bundle.main }

    var afterTime: TimeInterval { return 0.0 }

    var parameters: [String]? { return nil }

    var headers: [String : String]? { return nil }

    var statusCode: Int { return 200 }

    var httpVersion: String? { return "1.1" }

    var name: String? {
        switch self {
        case .success:
            return <#Description Name#>
        case .successNoContent:
            return <#Description Name#>
        case .failed:
            return <#Description Name#>
        }
    }

    func mockFile() -> String {
        switch self {
        case .success:
            return "___FILEBASENAMEASIDENTIFIER___-success.json"
        case .successNoContent:
            return "___FILEBASENAMEASIDENTIFIER___-successNoContent.json"
        case .failed:
            return "___FILEBASENAMEASIDENTIFIER___-failed.json"
        }
    }
}

extension ___FILEBASENAMEASIDENTIFIER___ {

    /**
     * Create multiple functions here to register your mocks for all urls and HTTP Method
     * Call these functions before execute requests.
     */

    /// Register Mock for <#URL#> and <#MockHTTPMethod#>
    static func register() {
        let mock = ___FILEBASENAMEASIDENTIFIER___.success
        let mockEmpty = ___FILEBASENAMEASIDENTIFIER___.successNoContent
        let mockFailed = ___FILEBASENAMEASIDENTIFIER___.failed
        FireMock.register(mock: mock, mockEmpty, mockFailed, forURL: <#URL#>, httpMethod: <#MockHTTPMethod#>, enabled: true)
    }

    // ...
}
