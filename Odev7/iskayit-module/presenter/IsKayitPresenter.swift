//
//  IsKayitPresenter.swift
//  Odev7
//
//  Created by Sinan Sezer on 16.10.2022.
//

import Foundation

class IsKayitPresenter : ViewToPresenterIsKayitProtocol {
    var isKayitInteractor: PresenterToInteractorIsKayitProtocol?
    
    func ekle(yapilacak_is: String) {
        isKayitInteractor?.isEkle(yapilacak_is: yapilacak_is)
    }
}
