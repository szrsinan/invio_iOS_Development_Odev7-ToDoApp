//
//  IsDetayVC.swift
//  Odev7
//
//  Created by Sinan Sezer on 16.10.2022.
//

import UIKit

class IsDetayVC: UIViewController {

    @IBOutlet weak var yapilacakIs: UITextField!
    
    var yapilacak:Isler?
    
    var isDetayPresenterNesnesi:ViewToPresenterIsDetayProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        IsDetayRouter.createModule(ref: self)
        
        if let i = yapilacak {
            yapilacakIs.text = i.yapilacak_is
        }
    }
    
    @IBAction func buttonGuncelle(_ sender: Any) {
        if let ia = yapilacakIs.text, let i = yapilacak {
            isDetayPresenterNesnesi?.guncelle(yapilacak_id: i.yapilacak_id!, yapilacak_is: ia)
        }
    }
}
