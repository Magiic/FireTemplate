//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

class ___FILEBASENAMEASIDENTIFIER___: ViewController {

    @IBOutlet weak var tableView: UITableView!

    var viewModel = ___VARIABLE_baseName___ViewModel()

    fileprivate let ___VARIABLE_tableViewCellName___Identifier: String = "___VARIABLE_tableViewCellName___"

    //MARK:- Override Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }

    //MARK:- Setup

    private func setup() {
        registerCells()
    }

    private func registerCells() {
        let nib = UINib(nibName: "___VARIABLE_tableViewCellName___", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: ___VARIABLE_tableViewCellName___Identifier)
    }
}

//MARK:- TableView Delegate & DataSource
extension ___FILEBASENAMEASIDENTIFIER___: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.items.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ___VARIABLE_tableViewCellName___Identifier) as! ___VARIABLE_tableViewCellName___

        cell.configure(data: viewModel.items[indexPath.row])

        return cell
    }
}
