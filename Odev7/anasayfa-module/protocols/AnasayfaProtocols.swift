//
//  AnasayfaProtocols.swift
//  Odev7
//
//  Created by Sinan Sezer on 16.10.2022.
//

import Foundation

protocol ViewToPresenterAnasayfaProtocol {
    var anasayfaInteractor:PresenterToInteractorAnasayfaProtocol? {get set}
    var anasayfaView:PresenterToViewAnasayfaProtocol? {get set}
    
    func isleriYukle()
    func ara(aramaKelimesi:String)
    func sil(yapilacak_id:Int)
}

protocol PresenterToInteractorAnasayfaProtocol {
    var anasayfaPresenter:InteractorToPresenterAnasayfaProtocol? {get set}
    
    func tumIsleriAl()
    func isAra(aramaKelimesi:String)
    func isSil(yapilacak_id:Int)
}

protocol InteractorToPresenterAnasayfaProtocol {
    func presenteraVeriGonder(islerListesi:[Isler])
}

protocol PresenterToViewAnasayfaProtocol {
    func vieweVeriGonder(islerListesi:[Isler])
}

protocol PresenterToRouterAnasayfaProtocol {
    static func createModule(ref:AnasayfaVC)
}
