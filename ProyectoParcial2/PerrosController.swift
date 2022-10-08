//
//  PerrosController.swift
//  ProyectoParcial2
//
//  Created by Alumno on 10/4/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class PerrosController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var perros: [Perro] = []
    var dato1: [Dato] = []
    var dato2: [Dato] = []
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 111
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return perros.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaPerro") as! CeldaPerroController
        celda.lblOrigen.text = perros[indexPath.row].origen
        celda.lblNombre.text = perros[indexPath.row].nombre
        celda.lblTamano.text = perros[indexPath.row].tamano
        
        celda.imgIcono.image = UIImage(named: perros[indexPath.row].icono)
        //celda.imgIcono.layer.cornerRadius = 2
        //celda.imgIcono.layer.borderWidth = 2
        celda.imgIcono.layer.cornerRadius = celda.imgIcono.frame.size.width / 12
        celda.imgIcono.clipsToBounds = true
        celda.imgIcono.layer.borderWidth = 2
        celda.imgIcono.layer.borderColor = UIColor(red: 175/255, green: 255/255, blue: 253/255, alpha: 1).cgColor
        
        return celda
    }
    @IBOutlet weak var tvPerros: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dato1.append(Dato(titulo: "Salud", desc: "Puede padecer desplazamientos temporales de la rótula (luxaciones de rótula) y problemas de tráquea. La forma de la cabeza hace que tiendan a sufrir hidrocefalias (agua en el cerebro) y ciertos trastornos oculares."))
        dato2.append(Dato(titulo: "Salud", desc: "Puede padecer desplazamientos temporales de la rótula (luxaciones de rótula) y problemas de tráquea. La forma de la cabeza hace que tiendan a sufrir hidrocefalias (agua en el cerebro) y ciertos trastornos oculares."))
        
        perros.append(Perro(origen: "México", nombre: "bulldog frances", tamano: "Mediano", icono: "raza-bulldog", altura: "Entre y 23 cm", peso: "2.5 a 4.7 kg.", pelaje: "Suave, fino y corto", espe: "De 12 a 20 años", caracter: "Alegre, sobreprotector, inquieto, valiente", sabias: "Son los perros más pequeños que hay, su cráneo tiene forma de manzana.", color1: "color1", color2: "color2", color3: "color3", color4: "color4", color5: "color5", principal: "raza-bulldog2", datos: dato1))
        
        perros.append(Perro(origen: "México", nombre: "Chihuahua", tamano: "Pequeño", icono: "raza-chihuahua", altura: "Entre 15 y 23 cm", peso: "1.8 a 2.7 kg.", pelaje: "Suave, fino y corto", espe: "De 12 a 20 años", caracter: "Alegre, sobreprotector, inquieto, valiente", sabias: "Son los perros más pequeños que hay, su cráneo tiene forma de manzana.", color1: "color1", color2: "color2", color3: "color3", color4: "color4", color5: "color5", principal: "raza-chihuahua2", datos: dato2))
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! DetallesPerroController
        destino.perro = perros[tvPerros.indexPathForSelectedRow!.row]
    }
}
