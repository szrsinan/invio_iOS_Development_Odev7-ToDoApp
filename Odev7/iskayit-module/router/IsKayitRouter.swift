//
//  IsKayitRouter.swift
//  Odev7
//
//  Created by Sinan Sezer on 16.10.2022.
//

import Foundation

class IsKayitRouter : PresenterToRouterIsKayitProtocol {
    static func createModule(ref: IsKayitVC) {
        ref.isKayitPresenterNesnesi = IsKayitPresenter()
        ref.isKayitPresenterNesnesi?.isKayitInteractor = IsKayitInteractor()
    }
}
