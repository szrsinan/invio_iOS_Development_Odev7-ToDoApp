//
//  IsDetayRouter.swift
//  Odev7
//
//  Created by Sinan Sezer on 16.10.2022.
//

import Foundation

class IsDetayRouter : PresenterToRouterIsDetayProtocol {
    static func createModule(ref: IsDetayVC) {
        ref.isDetayPresenterNesnesi = IsDetayPresenter()
        ref.isDetayPresenterNesnesi?.isDetayInteractor = IsDetayInteractor()
    }
}
