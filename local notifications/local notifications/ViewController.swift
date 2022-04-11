////
////  ViewController.swift
////  local notifications
////
////  Created by Cumulations Technologies on 01/04/22.
////
//
//import UIKit
//import UserNotifications
//class ViewController: UIViewController {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//        self.requestNotificationAuthorization()
//        self.sendNotification()
//    }
//    let userNotificationCenter = UNUserNotificationCenter.current()
//
//    func requestNotificationAuthorization() {
//        let authOptions = UNAuthorizationOptions.init(arrayLiteral: .alert, .badge, .sound)
//        self.userNotificationCenter.requestAuthorization(options: authOptions) { (success, error) in
//            if let error = error {
//                print("Error: ", error)
//            }
//            else{
//                print("access granted")
//            }
//        }
//    }
//
//
//    func sendNotification() {
//        print("send notification called")
//        let notificationContent = UNMutableNotificationContent()
//        notificationContent.title = "Test"
//        notificationContent.body = "Test body"
//        notificationContent.badge = NSNumber(value: 3)
//
//        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 2,
//                                                        repeats: false)
//        let request = UNNotificationRequest(identifier: "testNotification",
//                                            content: notificationContent,
//                                            trigger: trigger)
//
//        userNotificationCenter.add(request) { (error) in
//            if let error = error {
//                print("Notification Error: ", error)
//            }
//        }
//    }
//
//}



import UIKit
import UserNotifications



class viewController:UIViewController{
    @IBOutlet weak var button: UIButton!
    let center = UNUserNotificationCenter.current()
    override func viewDidLoad() {
        super.viewDidLoad()
        let auth = UNAuthorizationOptions.init(arrayLiteral: .provisional)
        center.requestAuthorization(options: auth) { success, error in
            if success {
                print("All set!")
            } else if let error = error {
                print(error.localizedDescription)
            }
        }
        
        self.sendNotification()
    }
    @IBAction func pressed(_ sender: Any) {
        sendNotification()
        exit(0)
    }
    func sendNotification(){
        print("send notification")
        let content = UNMutableNotificationContent()
        content.title = "title"
        content.subtitle = "subtitle"
        content.badge = 1
        content.sound = UNNotificationSound.default
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
        
        let request = UNNotificationRequest(identifier: "notification", content: content, trigger: trigger)
        
        self.center.add(request)
        
    }

 
}
