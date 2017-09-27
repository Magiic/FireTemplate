//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

class ___FILEBASENAMEASIDENTIFIER___: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!

    var viewModel = ___VARIABLE_baseName___ViewModel()

    fileprivate let ___VARIABLE_collectionViewCellName___Identifier: String = "___VARIABLE_collectionViewCellName___"

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
        let nib = UINib(nibName: "___VARIABLE_collectionViewCellName___", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: ___VARIABLE_collectionViewCellName___Identifier)
    }

}

//MARK:- CollectionView Delegate & DataSource
extension ___FILEBASENAMEASIDENTIFIER___: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.items.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ___VARIABLE_collectionViewCellName___Identifier, for: indexPath) as! ___VARIABLE_collectionViewCellName___

        cell.configure(data: viewModel.items[indexPath.row])

        return cell
    }
}
