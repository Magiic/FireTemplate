//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

final class ___FILEBASENAMEASIDENTIFIER___: NSObject, Coordinator {

    var childCoordinators: [Coordinator] = []

    private(set) var currentController: MainViewController!

    let navigationController: UINavigationController

    deinit {
        Logger.log(logType: .debug, category: LoggerCategory.<#category name#>, message: "Deinit ___VARIABLE_baseName___ Coordinator")
    }

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
        super.init()
    }

    func start(with deeplink: Deeplink?) {
        show___VARIABLE_baseName___()
    }
}

fileprivate extension ___FILEBASENAMEASIDENTIFIER___ {
    func show___VARIABLE_baseName___() {
        let viewModel = ___VARIABLE_baseName___ViewModelImpl()
        viewModel.delegate = self
        let viewController = ___VARIABLE_baseName___ViewController(coordinator: self, viewModel: viewModel)
        currentController = viewController
        //navigationController.present(viewController, animated: true, completion: nil)
        //navigationController.viewControllers = [viewController]
    }
}

extension ___FILEBASENAMEASIDENTIFIER___: ___VARIABLE_baseName___ViewModelDelegate {

}
