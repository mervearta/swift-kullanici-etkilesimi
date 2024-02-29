//
//  ViewController.swift
//  KullaniciEtkilesimiUygulamasi
//
//  Created by Merve Arta on 28.02.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonAlert(_ sender: Any) {
        
        //NORMAL ALERTIMI YAZDIM
        let alertController = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .alert)
        
        //GORUNTULEMEK ICIN
        self.present(alertController, animated: true)
        
        //IPTAL BUTONU
        let iptalAction = UIAlertAction(title: "İptal", style: .cancel){
            action in print("İptal seçildi")
        }
        alertController.addAction(iptalAction)
        
        //TAMAM BUTONU
        let tamamAction = UIAlertAction(title: "Tamam", style: .destructive){
            action in print("Tamam seçildi")
        }
        alertController.addAction(tamamAction)
        
    }
    
    @IBAction func buttonActionSheet(_ sender: Any) {
        
        //NORMAL ALERTIMI YAZDIM
        let alertController = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .actionSheet)
        
        //GORUNTULEMEK ICIN
        self.present(alertController, animated: true)
        
        //IPTAL BUTONU
        let iptalAction = UIAlertAction(title: "İptal", style: .cancel){
            action in print("İptal seçildi")
        }
        alertController.addAction(iptalAction)
        
        //TAMAM BUTONU
        let tamamAction = UIAlertAction(title: "Tamam", style: .destructive){
            action in print("Tamam seçildi")
        }
        alertController.addAction(tamamAction)
        
    }
    
    
    
    @IBAction func buttonOzelAlert(_ sender: Any) {
        
        //NORMAL ALERTIMI YAZDIM
        let alertController = UIAlertController(title: "Başlık", message: "Mesaj", preferredStyle: .alert)
        
        alertController.addTextField{
            textField in textField.placeholder = "Veri Giriniz"
            textField.keyboardType = .numberPad
            textField.isSecureTextEntry = true
        }
        
        //IPTAL BUTONU
        let kaydetAction = UIAlertAction(title: "Kaydet", style: .cancel){
            action in 
            print("Kaydet seçildi")
            let tf = alertController.textFields![0] as UITextField
            
            if let alinanVeri = tf.text{
                print("Alinan Veri : \(alinanVeri)")
            }
        }
        alertController.addAction(kaydetAction)
        
        //GORUNTULEMEK ICIN
        self.present(alertController, animated: true)
        
    }
    
}

