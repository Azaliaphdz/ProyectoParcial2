//
//  DetallesPerrosController.swift
//  ProyectoParcial2
//
//  Created by Alumno on 10/6/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class DetallesPerroController : UIViewController, UITableViewDelegate, UITableViewDataSource {
    var perro : Perro?
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 136
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (perro?.datos.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaDato") as! CeldaDatoController
        celda.lblTitulo.text = perro!.datos[indexPath.row].titulo
        celda.lblDesc.text = perro!.datos[indexPath.row].desc
        return celda
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    @IBOutlet weak var imgPrincipal: UIImageView!
    @IBOutlet weak var lblAltura: UILabel!
    @IBOutlet weak var lblPeso: UILabel!
    @IBOutlet weak var lblPelaje: UILabel!
    @IBOutlet weak var lblOrigen: UILabel!
    @IBOutlet weak var lblEspe: UILabel!
    @IBOutlet weak var lblCaracter: UILabel!
    @IBOutlet weak var lblSabiasQue: UILabel!
    @IBOutlet weak var imgColor1: UIImageView!
    @IBOutlet weak var imgColor2: UIImageView!
    @IBOutlet weak var imgColor3: UIImageView!
    @IBOutlet weak var imgColor4: UIImageView!
    @IBOutlet weak var imgColor5: UIImageView!
    
    @IBOutlet weak var imgAltura: UIImageView!
    @IBOutlet weak var imgPelaje: UIImageView!
    @IBOutlet weak var imgPeso: UIImageView!
    @IBOutlet weak var imgOrigen: UIImageView!
    
   //let cornerRadius: CGFloat = 25.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if perro != nil{
            self.title = perro?.nombre
            imgPrincipal.image = UIImage(named: perro!.principal)
            
            imgPrincipal.layer.cornerRadius = 25.0

            imgPrincipal.clipsToBounds = true
            
            //imgPrincipal.layer.shadowColor = UIColor.darkGray.cgColor
            //imgPrincipal.layer.shadowOffset = CGSize(width: 5.0, height: 5.0)
            //imgPrincipal.layer.shadowRadius = 25.0
            //imgPrincipal.layer.shadowOpacity = 0.9
   
            //imgPrincipal.layer.borderWidth = 1
            
            lblAltura.text = perro?.altura
            lblPeso.text = perro?.peso
            lblPelaje.text = perro?.pelaje
            lblOrigen.text = perro?.altura
            lblCaracter.text = perro?.caracter
            lblSabiasQue.text = perro?.sabias
            imgColor1.image = UIImage(named: perro!.color1)
            imgColor2.image = UIImage(named: perro!.color2)
            imgColor3.image = UIImage(named: perro!.color3)
            imgColor4.image = UIImage(named: perro!.color4)
            imgColor5.image = UIImage(named: perro!.color5)

            imgColor1.layer.cornerRadius = 15
            imgColor1.layer.borderWidth = 1
            imgColor1.layer.borderColor = UIColor.gray.cgColor
            
            imgColor2.layer.cornerRadius = 15
            imgColor2.layer.borderWidth = 1
            imgColor2.layer.borderColor = UIColor.gray.cgColor
            
            imgColor3.layer.cornerRadius = 15
            imgColor3.layer.borderWidth = 1
            imgColor3.layer.borderColor = UIColor.gray.cgColor
            
            imgColor4.layer.cornerRadius = 15
            imgColor4.layer.borderWidth = 1
            imgColor4.layer.borderColor = UIColor.gray.cgColor
            
            imgColor5.layer.cornerRadius = 15
            imgColor5.layer.borderWidth = 1
            imgColor5.layer.borderColor = UIColor.gray.cgColor
            
            imgAltura.layer.cornerRadius = imgAltura.frame.size.width / 12
            imgAltura.clipsToBounds = true
            
            imgPelaje.layer.cornerRadius = imgAltura.frame.size.width / 12
            imgPelaje.clipsToBounds = true
            
            imgPeso.layer.cornerRadius = imgAltura.frame.size.width / 12
            imgPeso.clipsToBounds = true
            
            imgOrigen.layer.cornerRadius = imgAltura.frame.size.width / 12
            imgOrigen.clipsToBounds = true
            
            
        }else{
        self.title = "Detalles de Perro"
        }
    }

}

