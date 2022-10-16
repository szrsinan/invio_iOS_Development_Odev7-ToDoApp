//
//  AnasayfaInteractor.swift
//  Odev7
//
//  Created by Sinan Sezer on 16.10.2022.
//

import Foundation

class AnasayfaInteractor : PresenterToInteractorAnasayfaProtocol {
    var anasayfaPresenter: InteractorToPresenterAnasayfaProtocol?
    
    let db:FMDatabase?
    
    init(){
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let kopyalanacakYer = URL(fileURLWithPath: hedefYol).appendingPathComponent("todo.sqlite")
        db = FMDatabase(path: kopyalanacakYer.path)
    }
    
    func tumIsleriAl() {
        var liste = [Isler]()
        
        db?.open()
        
        do{
            let r = try db!.executeQuery("SELECT * FROM isler", values: nil)
            
            while r.next() {
                let yapilacak = Isler(yapilacak_id: Int(r.string(forColumn: "yapilacak_id"))!,
                                      yapilacak_is: r.string(forColumn: "yapilacak_is")!)
                liste.append(yapilacak)
            }
            
            anasayfaPresenter?.presenteraVeriGonder(islerListesi: liste)
            
        }catch{
            print(error.localizedDescription)
        }
        
        db?.close()
    }
    
    func isAra(aramaKelimesi: String) {
        var liste = [Isler]()
        
        db?.open()
        
        do{
            let r = try db!.executeQuery("SELECT * FROM isler WHERE yapilacak_is like '%\(aramaKelimesi)%'", values: nil)
            
            while r.next() {
                let yapilacak = Isler(yapilacak_id: Int(r.string(forColumn: "yapilacak_id"))!,
                                      yapilacak_is: r.string(forColumn: "yapilacak_is")!)
                liste.append(yapilacak)
            }
            
            anasayfaPresenter?.presenteraVeriGonder(islerListesi: liste)
            
        }catch{
            print(error.localizedDescription)
        }
        
        db?.close()
    }
    
    func isSil(yapilacak_id: Int) {
        db?.open()
        
        do{
            try db!.executeUpdate("DELETE FROM isler WHERE yapilacak_id = ?", values: [yapilacak_id])
            tumIsleriAl()
        }catch{
            print(error.localizedDescription)
        }
        
        db?.close()
    }
}
