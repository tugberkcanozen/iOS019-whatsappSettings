//
//  SettingsViewController.swift
//  whatsappSettings
//
//  Created by Tuğberk Can Özen on 3.04.2022.
//

import UIKit

class SettingsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var settingsArray = [["Yıldızlı Mesajlar", "Bağlı Cihazlar"], ["Hesap", "Sohbetler", "Bildirimler", "Saklama Alanı ve Veriler", "Yardım","Arkadaşlarına öner"]]
    
    var imagesArray = [["favori", "web"], ["hesaplar", "sohbet", "bildirimler", "depolama", "bilgi", "davet"]]
    
    
    @IBOutlet weak var profileTableView: UITableView!
    @IBOutlet weak var settingsTableVieww: UITableView!
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        if tableView == self.profileTableView {
            return 1
        } else {
            return settingsArray.count
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if tableView == self.profileTableView {
            return 1
        } else {
            return settingsArray[section].count
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if (tableView == self.profileTableView) {
            let cellIdentifier = "ProfileTableViewCell"
            let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as! ProfileTableViewCell
            
            cell.profileImage.image = UIImage(named: "profile")
            cell.nameLabel.text = "Tuğberk Can Özen"
            cell.statusLabel.text = "In god we trust."
            return cell
        } else {
            let cellIdentifier = "SettingsTableViewCell"
            let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as! SettingsTableViewCell
            
            cell.settingsImage.image = UIImage(named: imagesArray[indexPath.section][indexPath.row])
            cell.settingsLabel.text = settingsArray[indexPath.section][indexPath.row]
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if tableView == self.settingsTableVieww{
            return 50
        }
        return 0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        profileTableView.dataSource = self
        profileTableView.dataSource = self
        settingsTableVieww.dataSource = self
        settingsTableVieww.delegate = self
        
    }
    
}
