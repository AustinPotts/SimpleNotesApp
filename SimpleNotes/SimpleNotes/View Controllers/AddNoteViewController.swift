//
//  AddNoteViewController.swift
//  SimpleNotes
//
//  Created by Austin Potts on 8/15/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class AddNoteViewController: UIViewController {

    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var bodyTextField: UITextView!
    
    var noteController: NoteController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        


    }
    
    @IBAction func saveButton(_ sender: Any) {
        guard let newTitle = titleTextField.text, titleTextField.text != "" else {return}
        guard let newBody = bodyTextField.text, bodyTextField.text != "" else{return}
        
        let newNote = Note(title: newTitle, body: newBody)
        noteController?.notes.append(newNote)
        navigationController?.popViewController(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
