//
//  AnasayfaPresenter.swift
//  Odev7
//
//  Created by Sinan Sezer on 16.10.2022.
//

import Foundation

class AnasayfaPresenter : ViewToPresenterAnasayfaProtocol {
    var anasayfaInteractor: PresenterToInteractorAnasayfaProtocol?
    var anasayfaView: PresenterToViewAnasayfaProtocol?
    
    func isleriYukle() {
        anasayfaInteractor?.tumIsleriAl()
    }
    
    func ara(aramaKelimesi: String) {
        anasayfaInteractor?.isAra(aramaKelimesi: aramaKelimesi)
    }
    
    func sil(yapilacak_id: Int) {
        anasayfaInteractor?.isSil(yapilacak_id: yapilacak_id)
    }
}

extension AnasayfaPresenter : InteractorToPresenterAnasayfaProtocol {
    func presenteraVeriGonder(islerListesi: [Isler]) {
        anasayfaView?.vieweVeriGonder(islerListesi: islerListesi)
    }
}
