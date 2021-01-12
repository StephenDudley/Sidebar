import Cocoa

class SDContentViewController: NSViewController
{
    @IBOutlet var myLabel: NSTextField!
    
    var currentModule: SDModule? {
        didSet {
            guard let module = currentModule else {
                myLabel.stringValue = ""
                return
            }
            
            myLabel.stringValue = module.description
        }
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let name = NSTableView.selectionDidChangeNotification
        NotificationCenter.default.addObserver(forName: name, object: nil, queue: nil) { (note) in
            guard let table = note.object as? NSTableView else { return }
            
            let row = table.selectedRow
            self.currentModule = row >= 0 ? SDModule.allCases[row] : nil
        }
    }
}
