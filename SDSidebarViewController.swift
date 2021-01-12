import Cocoa

class SDSidebarViewController: NSViewController, NSTableViewDataSource, NSTableViewDelegate
{
    var tableContents: [String] = []
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        tableContents = ["Zero", "One", "Two", "Three"]
    }
    
    func numberOfRows(in tableView: NSTableView) -> Int
    {
        tableContents.count
    }
    
    func tableView(_ tableView: NSTableView, viewFor tableColumn: NSTableColumn?, row: Int) -> NSView?
    {
        guard let id = tableColumn?.identifier else { return nil }
        let cellView = tableView.makeView(withIdentifier: id, owner: self) as? NSTableCellView
        
        cellView?.textField?.stringValue = tableContents[row]
        
        return cellView
    }
}
