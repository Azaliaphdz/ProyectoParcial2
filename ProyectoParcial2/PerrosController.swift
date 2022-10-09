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
    var dato3: [Dato] = []
    var dato4: [Dato] = []
    var dato5: [Dato] = []
    var dato6: [Dato] = []
    var dato7: [Dato] = []
    var dato8: [Dato] = []
    var dato9: [Dato] = []
    var dato10: [Dato] = []
    var dato11: [Dato] = []
    var dato12: [Dato] = []
    var dato13: [Dato] = []
    var dato14: [Dato] = []
    var dato15: [Dato] = []
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
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
        //celda.backgroundColor = .clear
        celda.imgIcono.image = UIImage(named: perros[indexPath.row].icono)
        //celda.imgIcono.layer.cornerRadius = 2
        //celda.imgIcono.layer.borderWidth = 2
        celda.imgIcono.layer.cornerRadius = celda.imgIcono.frame.size.width / 12
        celda.imgIcono.clipsToBounds = true
        //celda.imgIcono.layer.borderWidth = 2
        //celda.imgIcono.layer.borderColor = UIColor(red: 175/255, green: 255/255, blue: 253/255, alpha: 1).cgColor
        
       //celda.backgroundColor = UIColor.white
       //celda.layer.borderColor = UIColor.black.cgColor
        //celda.layer.borderWidth = 1
        celda.layer.cornerRadius = 8
        celda.clipsToBounds = true
        
        return celda
    }
    
    @IBOutlet weak var tvPerros: UITableView!
    
    var imgFondo = UIImageView(image: UIImage(named: "fondo2.jpg"))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tvPerros.backgroundView = imgFondo
        imgFondo.contentMode = UIView.ContentMode.scaleAspectFill
        
        //bulldog
        dato1.append(Dato(titulo: "Salud", desc: "Puede padecer desplazamientos temporales de la rótula (luxaciones de rótula) y problemas de tráquea. La forma de la cabeza hace que tiendan a sufrir hidrocefalias (agua en el cerebro) y ciertos trastornos oculares."))
        dato1.append(Dato(titulo: "Ejercicio", desc: "El chihuahua se adapta a la cantidad de ejercicio que se le ofrezca, siempre con moderación. Suelen ser muy energéticos y se emocionan mucho al jugar, pero no necesitan paseos largos; bastará con media hora al día."))
        dato1.append(Dato(titulo: "Nutrición", desc: "Los perros de compañía tienen un metabolismo rápido, lo que significa que queman energía a un ritmo muy alto. Esto supone que, con un estómago tan pequeño, deben comer poco pero a menudo."))
        dato1.append(Dato(titulo: "Aseo", desc: "El chihuahua se adapta a la cantidad de ejercicio que se le ofrezca, siempre con moderación. Suelen ser muy energéticos y se emocionan mucho al jugar, pero no necesitan paseos largos; bastará con media hora al día."))
        dato1.append(Dato(titulo: "Mejores razas de perros para niños", desc: "El chihuahua se adapta a la cantidad de ejercicio que se le ofrezca, siempre con moderación. Suelen ser muy energéticos y se emocionan mucho al jugar, pero no necesitan paseos largos; bastará con media hora al día."))
        //chihuahua
        dato2.append(Dato(titulo: "Salud", desc: "Puede padecer desplazamientos temporales de la rótula (luxaciones de rótula) y problemas de tráquea. La forma de la cabeza hace que tiendan a sufrir hidrocefalias y ciertos trastornos oculares."))
        dato2.append(Dato(titulo: "Ejercicio", desc: "El chihuahua se adapta a la cantidad de ejercicio que se le ofrezca, siempre con moderación. Suelen ser muy energéticos y se emocionan mucho al jugar, bastará con media hora al día."))
        dato2.append(Dato(titulo: "Nutrición", desc: "Los perros de compañía tienen un metabolismo rápido, lo que significa que queman energía a un ritmo muy alto. Esto supone que, con un estómago tan pequeño, deben comer poco pero a menudo."))
        dato2.append(Dato(titulo: "Aseo", desc: "Esta raza no necesita un aseo excesivo. Esta variedad de pelaje suave se asea con un peine o cepillo de goma de vez en cuando. Los chihuahuas sí que mudan, pero como es una raza pequeña, no tienen demasiado pelo que perder."))
        dato2.append(Dato(titulo: "Mejores razas de perros para niños", desc: "Aunque tradicionalmente la mayoría de perros son buenos con los niños, todos los perros y niños necesitan que se les enseñe a llevarse bien y a respetarse mutuamente para estar seguros."))
        //corgi
        dato3.append(Dato(titulo: "Salud", desc: "Puede padecer desplazamientos temporales de la rótula (luxaciones de rótula) y problemas de tráquea. La forma de la cabeza hace que tiendan a sufrir hidrocefalias (agua en el cerebro) y ciertos trastornos oculares."))
        dato3.append(Dato(titulo: "Ejercicio", desc: "El chihuahua se adapta a la cantidad de ejercicio que se le ofrezca, siempre con moderación. Suelen ser muy energéticos y se emocionan mucho al jugar, pero no necesitan paseos largos; bastará con media hora al día."))
        dato3.append(Dato(titulo: "Nutrición", desc: "Los perros de compañía tienen un metabolismo rápido, lo que significa que queman energía a un ritmo muy alto. Esto supone que, con un estómago tan pequeño, deben comer poco pero a menudo."))
        dato3.append(Dato(titulo: "Aseo", desc: "El chihuahua se adapta a la cantidad de ejercicio que se le ofrezca, siempre con moderación. Suelen ser muy energéticos y se emocionan mucho al jugar, pero no necesitan paseos largos; bastará con media hora al día."))
        dato3.append(Dato(titulo: "Mejores razas de perros para niños", desc: "El chihuahua se adapta a la cantidad de ejercicio que se le ofrezca, siempre con moderación. Suelen ser muy energéticos y se emocionan mucho al jugar, pero no necesitan paseos largos; bastará con media hora al día."))
        //dalmata
        dato4.append(Dato(titulo: "Salud", desc: "Puede padecer desplazamientos temporales de la rótula (luxaciones de rótula) y problemas de tráquea. La forma de la cabeza hace que tiendan a sufrir hidrocefalias y ciertos trastornos oculares."))
        dato4.append(Dato(titulo: "Ejercicio", desc: "El chihuahua se adapta a la cantidad de ejercicio que se le ofrezca, siempre con moderación. Suelen ser muy energéticos y se emocionan mucho al jugar, bastará con media hora al día."))
        dato4.append(Dato(titulo: "Nutrición", desc: "Los perros de compañía tienen un metabolismo rápido, lo que significa que queman energía a un ritmo muy alto. Esto supone que, con un estómago tan pequeño, deben comer poco pero a menudo."))
        dato4.append(Dato(titulo: "Aseo", desc: "Esta raza no necesita un aseo excesivo. Esta variedad de pelaje suave se asea con un peine o cepillo de goma de vez en cuando. Los chihuahuas sí que mudan, pero como es una raza pequeña, no tienen demasiado pelo que perder."))
        dato4.append(Dato(titulo: "Mejores razas de perros para niños", desc: "Aunque tradicionalmente la mayoría de perros son buenos con los niños, todos los perros y niños necesitan que se les enseñe a llevarse bien y a respetarse mutuamente para estar seguros."))
        //golden retriever
        dato5.append(Dato(titulo: "Salud", desc: "Puede padecer desplazamientos temporales de la rótula (luxaciones de rótula) y problemas de tráquea. La forma de la cabeza hace que tiendan a sufrir hidrocefalias (agua en el cerebro) y ciertos trastornos oculares."))
        dato5.append(Dato(titulo: "Ejercicio", desc: "El chihuahua se adapta a la cantidad de ejercicio que se le ofrezca, siempre con moderación. Suelen ser muy energéticos y se emocionan mucho al jugar, pero no necesitan paseos largos; bastará con media hora al día."))
        dato5.append(Dato(titulo: "Nutrición", desc: "Los perros de compañía tienen un metabolismo rápido, lo que significa que queman energía a un ritmo muy alto. Esto supone que, con un estómago tan pequeño, deben comer poco pero a menudo."))
        dato5.append(Dato(titulo: "Aseo", desc: "El chihuahua se adapta a la cantidad de ejercicio que se le ofrezca, siempre con moderación. Suelen ser muy energéticos y se emocionan mucho al jugar, pero no necesitan paseos largos; bastará con media hora al día."))
        dato5.append(Dato(titulo: "Mejores razas de perros para niños", desc: "El chihuahua se adapta a la cantidad de ejercicio que se le ofrezca, siempre con moderación. Suelen ser muy energéticos y se emocionan mucho al jugar, pero no necesitan paseos largos; bastará con media hora al día."))
        //labrador retiever
        dato6.append(Dato(titulo: "Salud", desc: "Puede padecer desplazamientos temporales de la rótula (luxaciones de rótula) y problemas de tráquea. La forma de la cabeza hace que tiendan a sufrir hidrocefalias y ciertos trastornos oculares."))
        dato6.append(Dato(titulo: "Ejercicio", desc: "El chihuahua se adapta a la cantidad de ejercicio que se le ofrezca, siempre con moderación. Suelen ser muy energéticos y se emocionan mucho al jugar, bastará con media hora al día."))
        dato6.append(Dato(titulo: "Nutrición", desc: "Los perros de compañía tienen un metabolismo rápido, lo que significa que queman energía a un ritmo muy alto. Esto supone que, con un estómago tan pequeño, deben comer poco pero a menudo."))
        dato6.append(Dato(titulo: "Aseo", desc: "Esta raza no necesita un aseo excesivo. Esta variedad de pelaje suave se asea con un peine o cepillo de goma de vez en cuando. Los chihuahuas sí que mudan, pero como es una raza pequeña, no tienen demasiado pelo que perder."))
        dato6.append(Dato(titulo: "Mejores razas de perros para niños", desc: "Aunque tradicionalmente la mayoría de perros son buenos con los niños, todos los perros y niños necesitan que se les enseñe a llevarse bien y a respetarse mutuamente para estar seguros."))
        //pastor aleman
        dato7.append(Dato(titulo: "Salud", desc: "Puede padecer desplazamientos temporales de la rótula (luxaciones de rótula) y problemas de tráquea. La forma de la cabeza hace que tiendan a sufrir hidrocefalias (agua en el cerebro) y ciertos trastornos oculares."))
        dato7.append(Dato(titulo: "Ejercicio", desc: "El chihuahua se adapta a la cantidad de ejercicio que se le ofrezca, siempre con moderación. Suelen ser muy energéticos y se emocionan mucho al jugar, pero no necesitan paseos largos; bastará con media hora al día."))
        dato7.append(Dato(titulo: "Nutrición", desc: "Los perros de compañía tienen un metabolismo rápido, lo que significa que queman energía a un ritmo muy alto. Esto supone que, con un estómago tan pequeño, deben comer poco pero a menudo."))
        dato7.append(Dato(titulo: "Aseo", desc: "El chihuahua se adapta a la cantidad de ejercicio que se le ofrezca, siempre con moderación. Suelen ser muy energéticos y se emocionan mucho al jugar, pero no necesitan paseos largos; bastará con media hora al día."))
        dato7.append(Dato(titulo: "Mejores razas de perros para niños", desc: "El chihuahua se adapta a la cantidad de ejercicio que se le ofrezca, siempre con moderación. Suelen ser muy energéticos y se emocionan mucho al jugar, pero no necesitan paseos largos; bastará con media hora al día."))
        //pitbull
        dato8.append(Dato(titulo: "Salud", desc: "Puede padecer desplazamientos temporales de la rótula (luxaciones de rótula) y problemas de tráquea. La forma de la cabeza hace que tiendan a sufrir hidrocefalias y ciertos trastornos oculares."))
        dato8.append(Dato(titulo: "Ejercicio", desc: "El chihuahua se adapta a la cantidad de ejercicio que se le ofrezca, siempre con moderación. Suelen ser muy energéticos y se emocionan mucho al jugar, bastará con media hora al día."))
        dato8.append(Dato(titulo: "Nutrición", desc: "Los perros de compañía tienen un metabolismo rápido, lo que significa que queman energía a un ritmo muy alto. Esto supone que, con un estómago tan pequeño, deben comer poco pero a menudo."))
        dato8.append(Dato(titulo: "Aseo", desc: "Esta raza no necesita un aseo excesivo. Esta variedad de pelaje suave se asea con un peine o cepillo de goma de vez en cuando. Los chihuahuas sí que mudan, pero como es una raza pequeña, no tienen demasiado pelo que perder."))
        dato8.append(Dato(titulo: "Mejores razas de perros para niños", desc: "Aunque tradicionalmente la mayoría de perros son buenos con los niños, todos los perros y niños necesitan que se les enseñe a llevarse bien y a respetarse mutuamente para estar seguros."))
        //poodle
        dato9.append(Dato(titulo: "Salud", desc: "Puede padecer desplazamientos temporales de la rótula (luxaciones de rótula) y problemas de tráquea. La forma de la cabeza hace que tiendan a sufrir hidrocefalias y ciertos trastornos oculares."))
        dato9.append(Dato(titulo: "Ejercicio", desc: "El chihuahua se adapta a la cantidad de ejercicio que se le ofrezca, siempre con moderación. Suelen ser muy energéticos y se emocionan mucho al jugar, bastará con media hora al día."))
        dato9.append(Dato(titulo: "Nutrición", desc: "Los perros de compañía tienen un metabolismo rápido, lo que significa que queman energía a un ritmo muy alto. Esto supone que, con un estómago tan pequeño, deben comer poco pero a menudo."))
        dato9.append(Dato(titulo: "Aseo", desc: "Esta raza no necesita un aseo excesivo. Esta variedad de pelaje suave se asea con un peine o cepillo de goma de vez en cuando. Los chihuahuas sí que mudan, pero como es una raza pequeña, no tienen demasiado pelo que perder."))
        dato9.append(Dato(titulo: "Mejores razas de perros para niños", desc: "Aunque tradicionalmente la mayoría de perros son buenos con los niños, todos los perros y niños necesitan que se les enseñe a llevarse bien y a respetarse mutuamente para estar seguros."))
        //pug
        dato10.append(Dato(titulo: "Salud", desc: "Puede padecer desplazamientos temporales de la rótula (luxaciones de rótula) y problemas de tráquea. La forma de la cabeza hace que tiendan a sufrir hidrocefalias (agua en el cerebro) y ciertos trastornos oculares."))
        dato10.append(Dato(titulo: "Ejercicio", desc: "El chihuahua se adapta a la cantidad de ejercicio que se le ofrezca, siempre con moderación. Suelen ser muy energéticos y se emocionan mucho al jugar, pero no necesitan paseos largos; bastará con media hora al día."))
        dato10.append(Dato(titulo: "Nutrición", desc: "Los perros de compañía tienen un metabolismo rápido, lo que significa que queman energía a un ritmo muy alto. Esto supone que, con un estómago tan pequeño, deben comer poco pero a menudo."))
        dato10.append(Dato(titulo: "Aseo", desc: "El chihuahua se adapta a la cantidad de ejercicio que se le ofrezca, siempre con moderación. Suelen ser muy energéticos y se emocionan mucho al jugar, pero no necesitan paseos largos; bastará con media hora al día."))
        dato10.append(Dato(titulo: "Mejores razas de perros para niños", desc: "El chihuahua se adapta a la cantidad de ejercicio que se le ofrezca, siempre con moderación. Suelen ser muy energéticos y se emocionan mucho al jugar, pero no necesitan paseos largos; bastará con media hora al día."))
        //rottweiler
        dato11.append(Dato(titulo: "Salud", desc: "Puede padecer desplazamientos temporales de la rótula (luxaciones de rótula) y problemas de tráquea. La forma de la cabeza hace que tiendan a sufrir hidrocefalias y ciertos trastornos oculares."))
        dato11.append(Dato(titulo: "Ejercicio", desc: "El chihuahua se adapta a la cantidad de ejercicio que se le ofrezca, siempre con moderación. Suelen ser muy energéticos y se emocionan mucho al jugar, bastará con media hora al día."))
        dato11.append(Dato(titulo: "Nutrición", desc: "Los perros de compañía tienen un metabolismo rápido, lo que significa que queman energía a un ritmo muy alto. Esto supone que, con un estómago tan pequeño, deben comer poco pero a menudo."))
        dato11.append(Dato(titulo: "Aseo", desc: "Esta raza no necesita un aseo excesivo. Esta variedad de pelaje suave se asea con un peine o cepillo de goma de vez en cuando. Los chihuahuas sí que mudan, pero como es una raza pequeña, no tienen demasiado pelo que perder."))
        dato11.append(Dato(titulo: "Mejores razas de perros para niños", desc: "Aunque tradicionalmente la mayoría de perros son buenos con los niños, todos los perros y niños necesitan que se les enseñe a llevarse bien y a respetarse mutuamente para estar seguros."))
        //salchicha
        dato12.append(Dato(titulo: "Salud", desc: "Puede padecer desplazamientos temporales de la rótula (luxaciones de rótula) y problemas de tráquea. La forma de la cabeza hace que tiendan a sufrir hidrocefalias (agua en el cerebro) y ciertos trastornos oculares."))
        dato12.append(Dato(titulo: "Ejercicio", desc: "El chihuahua se adapta a la cantidad de ejercicio que se le ofrezca, siempre con moderación. Suelen ser muy energéticos y se emocionan mucho al jugar, pero no necesitan paseos largos; bastará con media hora al día."))
        dato12.append(Dato(titulo: "Nutrición", desc: "Los perros de compañía tienen un metabolismo rápido, lo que significa que queman energía a un ritmo muy alto. Esto supone que, con un estómago tan pequeño, deben comer poco pero a menudo."))
        dato12.append(Dato(titulo: "Aseo", desc: "El chihuahua se adapta a la cantidad de ejercicio que se le ofrezca, siempre con moderación. Suelen ser muy energéticos y se emocionan mucho al jugar, pero no necesitan paseos largos; bastará con media hora al día."))
        dato12.append(Dato(titulo: "Mejores razas de perros para niños", desc: "El chihuahua se adapta a la cantidad de ejercicio que se le ofrezca, siempre con moderación. Suelen ser muy energéticos y se emocionan mucho al jugar, pero no necesitan paseos largos; bastará con media hora al día."))
        //schnauzer
        dato13.append(Dato(titulo: "Salud", desc: "Puede padecer desplazamientos temporales de la rótula (luxaciones de rótula) y problemas de tráquea. La forma de la cabeza hace que tiendan a sufrir hidrocefalias y ciertos trastornos oculares."))
        dato13.append(Dato(titulo: "Ejercicio", desc: "El chihuahua se adapta a la cantidad de ejercicio que se le ofrezca, siempre con moderación. Suelen ser muy energéticos y se emocionan mucho al jugar, bastará con media hora al día."))
        dato13.append(Dato(titulo: "Nutrición", desc: "Los perros de compañía tienen un metabolismo rápido, lo que significa que queman energía a un ritmo muy alto. Esto supone que, con un estómago tan pequeño, deben comer poco pero a menudo."))
        dato13.append(Dato(titulo: "Aseo", desc: "Esta raza no necesita un aseo excesivo. Esta variedad de pelaje suave se asea con un peine o cepillo de goma de vez en cuando. Los chihuahuas sí que mudan, pero como es una raza pequeña, no tienen demasiado pelo que perder."))
        dato13.append(Dato(titulo: "Mejores razas de perros para niños", desc: "Aunque tradicionalmente la mayoría de perros son buenos con los niños, todos los perros y niños necesitan que se les enseñe a llevarse bien y a respetarse mutuamente para estar seguros."))
        //siberian husky
        dato14.append(Dato(titulo: "Salud", desc: "Puede padecer desplazamientos temporales de la rótula (luxaciones de rótula) y problemas de tráquea. La forma de la cabeza hace que tiendan a sufrir hidrocefalias (agua en el cerebro) y ciertos trastornos oculares."))
        dato14.append(Dato(titulo: "Ejercicio", desc: "El chihuahua se adapta a la cantidad de ejercicio que se le ofrezca, siempre con moderación. Suelen ser muy energéticos y se emocionan mucho al jugar, pero no necesitan paseos largos; bastará con media hora al día."))
        dato14.append(Dato(titulo: "Nutrición", desc: "Los perros de compañía tienen un metabolismo rápido, lo que significa que queman energía a un ritmo muy alto. Esto supone que, con un estómago tan pequeño, deben comer poco pero a menudo."))
        dato14.append(Dato(titulo: "Aseo", desc: "El chihuahua se adapta a la cantidad de ejercicio que se le ofrezca, siempre con moderación. Suelen ser muy energéticos y se emocionan mucho al jugar, pero no necesitan paseos largos; bastará con media hora al día."))
        dato14.append(Dato(titulo: "Mejores razas de perros para niños", desc: "El chihuahua se adapta a la cantidad de ejercicio que se le ofrezca, siempre con moderación. Suelen ser muy energéticos y se emocionan mucho al jugar, pero no necesitan paseos largos; bastará con media hora al día."))
        //yorkshire terrier
        dato15.append(Dato(titulo: "Salud", desc: "Puede padecer desplazamientos temporales de la rótula (luxaciones de rótula) y problemas de tráquea. La forma de la cabeza hace que tiendan a sufrir hidrocefalias y ciertos trastornos oculares."))
        dato15.append(Dato(titulo: "Ejercicio", desc: "El chihuahua se adapta a la cantidad de ejercicio que se le ofrezca, siempre con moderación. Suelen ser muy energéticos y se emocionan mucho al jugar, bastará con media hora al día."))
        dato15.append(Dato(titulo: "Nutrición", desc: "Los perros de compañía tienen un metabolismo rápido, lo que significa que queman energía a un ritmo muy alto. Esto supone que, con un estómago tan pequeño, deben comer poco pero a menudo."))
        dato15.append(Dato(titulo: "Aseo", desc: "Esta raza no necesita un aseo excesivo. Esta variedad de pelaje suave se asea con un peine o cepillo de goma de vez en cuando. Los chihuahuas sí que mudan, pero como es una raza pequeña, no tienen demasiado pelo que perder."))
        dato15.append(Dato(titulo: "Mejores razas de perros para niños", desc: "Aunque tradicionalmente la mayoría de perros son buenos con los niños, todos los perros y niños necesitan que se les enseñe a llevarse bien y a respetarse mutuamente para estar seguros."))
        
        
        //1
        perros.append(Perro(origen: "México", nombre: "Bulldog frances", tamano: "Tamaño mediano", icono: "raza-bulldog", altura: "Entre y 23 cm", peso: "2.5 a 4.7 kg.", pelaje: "Suave, fino y corto", espe: "De 12 a 20 años", caracter: "Alegre, sobreprotector, inquieto, valiente", sabias: "Son los perros más pequeños que hay, su cráneo tiene forma de manzana.", color1: "color1", color2: "color2", color3: "color3", color4: "color4", color5: "color5", principal: "raza-bulldog2", datos: dato1))
        //2
        perros.append(Perro(origen: "México", nombre: "Chihuahua", tamano: "Tamaño pequeño", icono: "raza-chihuahua", altura: "Entre 15 y 23 cm", peso: "1.8 a 2.7 kg.", pelaje: "Suave, fino y corto", espe: "De 12 a 20 años", caracter: "Alegre, sobreprotector, inquieto, valiente", sabias: "Son los perros más pequeños que hay, su cráneo tiene forma de manzana.", color1: "color1", color2: "color2", color3: "color3", color4: "color4", color5: "color5", principal: "raza-chihuahua2", datos: dato2))
        //3
        perros.append(Perro(origen: "México", nombre: "Corgi", tamano: "Tamaño pequeño", icono: "raza-corgi", altura: "Entre 15 y 23 cm", peso: "1.8 a 2.7 kg.", pelaje: "Suave, fino y corto", espe: "De 12 a 20 años", caracter: "Alegre, sobreprotector, inquieto, valiente", sabias: "Son los perros más pequeños que hay, su cráneo tiene forma de manzana.", color1: "color1", color2: "color2", color3: "color3", color4: "color4", color5: "color5", principal: "raza-corgi2", datos: dato3))
        //4
        perros.append(Perro(origen: "México", nombre: "Dálmata", tamano: "Tamaño pequeño", icono: "raza-dalmata", altura: "Entre 15 y 23 cm", peso: "1.8 a 2.7 kg.", pelaje: "Suave, fino y corto", espe: "De 12 a 20 años", caracter: "Alegre, sobreprotector, inquieto, valiente", sabias: "Son los perros más pequeños que hay, su cráneo tiene forma de manzana.", color1: "color1", color2: "color2", color3: "color3", color4: "color4", color5: "color5", principal: "raza-dalmata2", datos: dato4))
        //5
        perros.append(Perro(origen: "México", nombre: "Golden retriever", tamano: "Tamaño pequeño", icono: "raza-golden", altura: "Entre 15 y 23 cm", peso: "1.8 a 2.7 kg.", pelaje: "Suave, fino y corto", espe: "De 12 a 20 años", caracter: "Alegre, sobreprotector, inquieto, valiente", sabias: "Son los perros más pequeños que hay, su cráneo tiene forma de manzana.", color1: "color1", color2: "color2", color3: "color3", color4: "color4", color5: "color5", principal: "raza-golden2", datos: dato5))
        //6
        perros.append(Perro(origen: "México", nombre: "Labrador retriever", tamano: "Tamaño pequeño", icono: "raza-labrador", altura: "Entre 15 y 23 cm", peso: "1.8 a 2.7 kg.", pelaje: "Suave, fino y corto", espe: "De 12 a 20 años", caracter: "Alegre, sobreprotector, inquieto, valiente", sabias: "Son los perros más pequeños que hay, su cráneo tiene forma de manzana.", color1: "color1", color2: "color2", color3: "color3", color4: "color4", color5: "color5", principal: "raza-labrador2", datos: dato6))
        //7
        perros.append(Perro(origen: "México", nombre: "Pastor alemán", tamano: "Tamaño pequeño", icono: "raza-pastor", altura: "Entre 15 y 23 cm", peso: "1.8 a 2.7 kg.", pelaje: "Suave, fino y corto", espe: "De 12 a 20 años", caracter: "Alegre, sobreprotector, inquieto, valiente", sabias: "Son los perros más pequeños que hay, su cráneo tiene forma de manzana.", color1: "color1", color2: "color2", color3: "color3", color4: "color4", color5: "color5", principal: "raza-pastor2", datos: dato7))
        //8
        perros.append(Perro(origen: "México", nombre: "Pitbull", tamano: "Tamaño pequeño", icono: "raza-pitbull", altura: "Entre 15 y 23 cm", peso: "1.8 a 2.7 kg.", pelaje: "Suave, fino y corto", espe: "De 12 a 20 años", caracter: "Alegre, sobreprotector, inquieto, valiente", sabias: "Son los perros más pequeños que hay, su cráneo tiene forma de manzana.", color1: "color1", color2: "color2", color3: "color3", color4: "color4", color5: "color5", principal: "raza-pitbull2", datos: dato8))
        //9
        perros.append(Perro(origen: "México", nombre: "Poodle", tamano: "Tamaño pequeño", icono: "raza-poodle", altura: "Entre 15 y 23 cm", peso: "1.8 a 2.7 kg.", pelaje: "Suave, fino y corto", espe: "De 12 a 20 años", caracter: "Alegre, sobreprotector, inquieto, valiente", sabias: "Son los perros más pequeños que hay, su cráneo tiene forma de manzana.", color1: "color1", color2: "color2", color3: "color3", color4: "color4", color5: "color5", principal: "raza-poodle2", datos: dato9))
        //10
        perros.append(Perro(origen: "México", nombre: "Pug", tamano: "Tamaño pequeño", icono: "raza-pug", altura: "Entre 15 y 23 cm", peso: "1.8 a 2.7 kg.", pelaje: "Suave, fino y corto", espe: "De 12 a 20 años", caracter: "Alegre, sobreprotector, inquieto, valiente", sabias: "Son los perros más pequeños que hay, su cráneo tiene forma de manzana.", color1: "color1", color2: "color2", color3: "color3", color4: "color4", color5: "color5", principal: "raza-pug2", datos: dato10))
        //11
        perros.append(Perro(origen: "México", nombre: "Rottweiler", tamano: "Tamaño pequeño", icono: "raza-rottweiler", altura: "Entre 15 y 23 cm", peso: "1.8 a 2.7 kg.", pelaje: "Suave, fino y corto", espe: "De 12 a 20 años", caracter: "Alegre, sobreprotector, inquieto, valiente", sabias: "Son los perros más pequeños que hay, su cráneo tiene forma de manzana.", color1: "color1", color2: "color2", color3: "color3", color4: "color4", color5: "color5", principal: "raza-rottweiler2", datos: dato11))
        //12
        perros.append(Perro(origen: "México", nombre: "Salchicha", tamano: "Tamaño pequeño", icono: "raza-salchicha", altura: "Entre 15 y 23 cm", peso: "1.8 a 2.7 kg.", pelaje: "Suave, fino y corto", espe: "De 12 a 20 años", caracter: "Alegre, sobreprotector, inquieto, valiente", sabias: "Son los perros más pequeños que hay, su cráneo tiene forma de manzana.", color1: "color1", color2: "color2", color3: "color3", color4: "color4", color5: "color5", principal: "raza-salchicha2", datos: dato12))
        //13
        perros.append(Perro(origen: "México", nombre: "Schnauzer", tamano: "Tamaño pequeño", icono: "raza-schnauzer", altura: "Entre 15 y 23 cm", peso: "1.8 a 2.7 kg.", pelaje: "Suave, fino y corto", espe: "De 12 a 20 años", caracter: "Alegre, sobreprotector, inquieto, valiente", sabias: "Son los perros más pequeños que hay, su cráneo tiene forma de manzana.", color1: "color1", color2: "color2", color3: "color3", color4: "color4", color5: "color5", principal: "raza-schnauzer2", datos: dato13))
        //14
        perros.append(Perro(origen: "México", nombre: "Siberian husky", tamano: "Tamaño pequeño", icono: "raza-siberian-husky", altura: "Entre 15 y 23 cm", peso: "1.8 a 2.7 kg.", pelaje: "Suave, fino y corto", espe: "De 12 a 20 años", caracter: "Alegre, sobreprotector, inquieto, valiente", sabias: "Son los perros más pequeños que hay, su cráneo tiene forma de manzana.", color1: "color1", color2: "color2", color3: "color3", color4: "color4", color5: "color5", principal: "raza-siberian-husky2", datos: dato14))
        //15
        perros.append(Perro(origen: "México", nombre: "Yorkshire terrier", tamano: "Tamaño pequeño", icono: "raza-yorkshire", altura: "Entre 15 y 23 cm", peso: "1.8 a 2.7 kg.", pelaje: "Suave, fino y corto", espe: "De 12 a 20 años", caracter: "Alegre, sobreprotector, inquieto, valiente", sabias: "Son los perros más pequeños que hay, su cráneo tiene forma de manzana.", color1: "color1", color2: "color2", color3: "color3", color4: "color4", color5: "color5", principal: "raza-yorkshire2", datos: dato15))
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! DetallesPerroController
        destino.perro = perros[tvPerros.indexPathForSelectedRow!.row]
    }
}
