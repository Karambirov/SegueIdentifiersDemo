import UIKit

final class DetailViewController: UIViewController {

    // MARK: - Properties
    @IBOutlet weak var detailDescriptionLabel: UILabel!

    var detailItem: NSDate? {
        didSet {
            // Update the view.
            configureView()
        }
    }

    // MARK: - View Controller's life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureView()
    }

}

// MARK: - Methods
extension DetailViewController {

    fileprivate func configureView() {
        // Update the user interface for the detail item.
        if let detail = detailItem {
            if let label = detailDescriptionLabel {
                label.text = detail.description
            }
        }
    }

}
