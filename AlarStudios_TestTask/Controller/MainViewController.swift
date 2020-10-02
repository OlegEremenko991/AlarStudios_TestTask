//
//  MainViewController.swift
//  AlarStudios_TestTask
//
//  Created by Олег Еременко on 02.10.2020.
//

import UIKit

final class MainViewController: UIViewController {

    // MARK: Public properties
    
    static let identifier = "MainViewController"
    
    // MARK: IBOutlets
    
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    deinit {
        UD.shared.code = nil
        print("deinit")
    }
    
    // MARK: Private methods
    
    private func setupView() {
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib.init(nibName: DataCell.identifier, bundle: nil), forCellReuseIdentifier: DataCell.identifier)
    }
    
}

// MARK: - UITableViewDataSource

extension MainViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DataCell.identifier) as! DataCell
        cell.titleLabel.text = "Hello!"
        cell.countryLabel.text = "Country!"
        return cell
    }
    
    
}

// MARK: UITableViewDelegate

extension MainViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
