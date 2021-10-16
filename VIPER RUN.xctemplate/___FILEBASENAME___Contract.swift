//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import Foundation

// MARK: View
protocol ___VARIABLE_ModuleName___ViewRepresentable: AnyObject {
    var presenter: ___VARIABLE_ModuleName___PresenterRepresentable? { get set }
}

// MARK: Presenter
protocol ___VARIABLE_ModuleName___PresenterRepresentable: AnyObject {
    var view: ___VARIABLE_ModuleName___ViewRepresentable? { get set }
    var interactor: ___VARIABLE_ModuleName___InteractorRepresentable? { get set }
    var router: ___VARIABLE_ModuleName___RouterRepresentable? { get set }
}

// MARK: Interactor
protocol ___VARIABLE_ModuleName___InteractorRepresentable: AnyObject {
    var presenter: ___VARIABLE_ModuleName___PresenterRepresentable? { get set }
}

// MARK: Router
protocol ___VARIABLE_ModuleName___RouterRepresentable: AnyObject {
    var presenter: ___VARIABLE_ModuleName___PresenterRepresentable? { get set }
}
