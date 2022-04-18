//
//  ViewController.swift
//  Examen IOS
//
//  Created by Alexis on 12/04/22.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var myTableView: UITableView!
    
    @IBOutlet weak var bottonContinue: UIButton!
    
    
    
    var listOfItems: [String] = Array()
override func viewDidLoad(){
    super.viewDidLoad()
    
    listOfItems.append("Camara")
    listOfItems.append("Nombre Completo")
    listOfItems.append("Numero de telefono")
    listOfItems.append("Fecha de Nacimiento")
    listOfItems.append("Sexo Masculino/ Femenino")
    listOfItems.append("Color favorito")
    
    myTableView.dataSource = self
    myTableView.delegate = self
    myTableView.register(UINib.init(nibName: "TheTableViewCell", bundle: nil), forCellReuseIdentifier: "myCell")
    
}
    func showAlert(){
        let alert = UIAlertController(title: "Selecciona una opcion", message: "Debes seleccionar al menos una opcion", preferredStyle: UIAlertController.Style.alert)

               // add an action (button)
               alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

               // show the alert
               self.present(alert, animated: true, completion: nil)
           }
    
    
    @IBAction func continueNext(_ sender: Any) {
        
        if listOfItems.isEmpty == false {
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "NUEVO") as! NUEVO
        self.navigationController?.pushViewController(secondViewController, animated: true)
                    
        }else{
        showAlert()

        
    }
    }
}
extension ViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listOfItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell") as! TheTableViewCell
        cell.componentLabel.text = listOfItems[indexPath.row]
        cell.selectionStyle = .none
        cell.btnCheckMark.addTarget(self, action: #selector(checkMarkButtonClicked(sender:)), for: .touchUpInside)
        return cell
        
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 71.0
    }
    @objc func checkMarkButtonClicked (sender: UIButton){
        if sender.isSelected {
            sender.isSelected = false
            
            showAlert()

            
            

        } else {
            sender.isSelected = true
            
        }

}
}
    

