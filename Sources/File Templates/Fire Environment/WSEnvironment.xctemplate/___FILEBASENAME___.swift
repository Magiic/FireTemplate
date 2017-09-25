//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation

typealias WSEnv = ___FILEBASENAMEASIDENTIFIER___
typealias WSType = ___FILEBASENAMEASIDENTIFIER___.WSType

class ___FILEBASENAMEASIDENTIFIER___ {

    enum WSType {
        case debug
        case recette
        case pilote
        case production
    }

    //FIXME: ADD RELEASE, PILOTE, RECETTE to SWIFT_ACTIVE_COMPILATION_CONDITIONS in Build Settings into Project. Don't forget to create Schemes.
    // Debug => DEBUG
    // Release => RELEASE
    // Recette => RECETTE
    // Pilote => PILOTE

    #if RELEASE
    static let envType: WSType = .production
    #elseif PILOTE
    static let envType: WSType = .pilote
    #elseif RECETTE
    static let envType: WSType = .recette
    #else
    static let envType: WSType = .debug
    #endif

    static var baseURL: URL {
        switch WSEnv.envType {
        case .production:
            return URL(string: "___VARIABLE_ProductionURL___")!
        case .pilote:
            return URL(string: "___VARIABLE_PiloteURL___")!
        case .recette:
            return URL(string: "___VARIABLE_RecetteURL___")!
        case .debug:
            return URL(string: "___VARIABLE_DebugURL___")!
        }
    }

    /**
     * You can add a new baseURL variable if you need to manage multiple hosts for example.
     * ...
     */
}

//MARK:- Extension URLComponents

/**
 *
 * Use the function below to build URLComponents for your requests.
 *
 */
extension URLComponents {

    /// Build an URLComponents to use for requests. Defaut BaseURL is the BaseURL from ___FILEBASENAMEASIDENTIFIER___.
    static func buildComponents(withPath path: String, baseURL: URL = ___FILEBASENAMEASIDENTIFIER___.baseURL) -> URLComponents {
        var components = URLComponents(url: baseURL, resolvingAgainstBaseURL: false)
        components?.path = path

        return components!
    }
}
