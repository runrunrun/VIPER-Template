# VIPER Template
VIPER template inspired by 
https://theswiftdev.com/viper-best-practices-for-ios-developers/

# How To Install
1. Clone or download the repository.
2. Navigate to Xcode Templates folder: ```~/Library/Developer/Xcode/Templates/```. 
3. Copy and paste the VIPER RUN.xctemplate in Templates folder.

# Use
1. Open Xcode.
2. ```File -> New -> File``` or ```⌘ N```.
3. Scroll down till you see ```VIPER RUN``` template and choose it.
4. Set a name for your module.

# Generated Code

Code generated for a Login module.

### Contract
```LoginContract.swift```
```swift
import Foundation

// MARK: View
protocol LoginViewRepresentable: AnyObject {
    var presenter: LoginPresenterRepresentable? { get set }
}

// MARK: Presenter
protocol LoginPresenterRepresentable: AnyObject {
    var view: LoginViewRepresentable? { get set }
    var interactor: LoginInteractorRepresentable? { get set }
    var router: LoginRouterRepresentable? { get set }
}

// MARK: Interactor
protocol LoginInteractorRepresentable: AnyObject {
    var presenter: LoginPresenterRepresentable? { get set }
}

// MARK: Router
protocol LoginRouterRepresentable: AnyObject {
    var presenter: LoginPresenterRepresentable? { get set }
}
```

### Module
```LoginModule.swift```
```swift
import UIKit

final class LoginModule {
    func build() -> UIViewController {
        let view = LoginView()
        let interactor = LoginInteractor()
        let presenter = LoginPresenter()
        let router = LoginRouter()

        view.presenter = presenter

        presenter.interactor = interactor
        presenter.view = view
        presenter.router = router

        interactor.presenter = presenter

        router.presenter = presenter
        router.viewController = view
        
        return view
    }
}
```

### View
```LoginView.swift```
```swift
import UIKit

final class LoginView: UIViewController, LoginViewRepresentable {
    weak var presenter: LoginPresenterRepresentable?
}
```

### Interactor
```LoginInteractor.swift```
```swift
import Foundation

final class LoginInteractor: LoginInteractorRepresentable {
    weak var presenter: LoginPresenterRepresentable?
}
```

### Presenter
```LoginPresenter.swift```

```swift
import Foundation

final class LoginPresenter: LoginPresenterRepresentable {
    weak var view: LoginViewRepresentable?
    var interactor: LoginInteractorRepresentable?
    var router: LoginRouterRepresentable?
}
```

### Router
```LoginRouter.swift```
```swift
import UIKit

final class LoginRouter: LoginRouterRepresentable {
    weak var presenter: LoginPresenterRepresentable?
    weak var viewController: UIViewController?
}
```
