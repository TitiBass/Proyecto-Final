
import UIKit
// juego,salones ubicacación, guardar sesión, guardar materias en caso de terminar añadimos cosas en el calendario.

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var usernameField: UITextField!
    @IBOutlet var passwordField: UITextField!
    let defaults = UserDefaults.standard
    var registeredUsers = [String]()
    var passwordArr = [String]()
    
    
    override func viewDidLoad(){
        super.viewDidLoad()
        view.backgroundColor = UIColor.black
        usernameField.delegate = self
        passwordField.delegate = self
        
        
    }
    @IBAction func proceedButtonTapped(_ sender: AnyObject) {
        if defaults.object(forKey: "usernames") != nil{
            registeredUsers = defaults.object(forKey: "usernames") as! [String]
            passwordArr = defaults.object(forKey: "passwords") as! [String]
            for x in 0...(registeredUsers.count - 1) {
                if (usernameField.text! == registeredUsers[x]) && (passwordField.text! == passwordArr[x]) {
                    performSegue(withIdentifier: "loggedInd", sender: self)
                    break
                }
            }
            resetField()
            let incorrectAlert = UIAlertController(title: "Lo sentimos", message: "Por favor registra todos los campos.", preferredStyle: .alert)
            incorrectAlert.addAction(UIAlertAction(title: "ok", style: .default
                , handler: nil))
            self.present(incorrectAlert, animated: true, completion: nil)
            
        } else {
            let noOneHasRegisteredAlert = UIAlertController(title: "oops", message: "it seems like ther is no registered account in the system", preferredStyle: .alert)
            noOneHasRegisteredAlert.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
            self.present(noOneHasRegisteredAlert, animated: true, completion: nil)
        }
        
        
    }
    
    @IBAction func resetButtonTapped(_ sender: AnyObject) {
        resetField()
    }
    
    func resetField () {
        usernameField.text = ""
        passwordField.text = ""
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        usernameField.resignFirstResponder()
        passwordField.resignFirstResponder()
        return true
    }
    
 
 

    
    

}

