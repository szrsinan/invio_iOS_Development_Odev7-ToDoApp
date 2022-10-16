//
//  IsDetayPresenter.swift
//  Odev7
//
//  Created by Sinan Sezer on 16.10.2022.
//

import Foundation

class IsDetayPresenter : ViewToPresenterIsDetayProtocol {
    var isDetayInteractor: PresenterToInteractorIsDetayProtocol?
    
    func guncelle(yapilacak_id: Int, yapilacak_is: String) {
        isDetayInteractor?.isGuncelle(yapilacak_id: yapilacak_id, yapilacak_is: yapilacak_is)
    }
}
