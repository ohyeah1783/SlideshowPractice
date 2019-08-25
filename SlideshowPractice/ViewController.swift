import UIKit

class ViewController: UIViewController {
    
    let slide01: Int = 0
    let slide02: Int = 1
    let slide03: Int = 2

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var btnPrev: UIButton!
    @IBOutlet weak var btnNext: UIButton!
    @IBOutlet weak var btnPlay: UIButton!
    
    var timer: Timer!
    var imageIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageView.isUserInteractionEnabled = true
        imageView.tag = 1
        viewImage()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        if timer != l{
            timer.invalidate()
        }
    }
    
    // 画像を表示する
    func viewImage(){
        var iMG: UIImage!
        
        switch imageIndex{
        case slide01:
            iMG = UIImage(named: "slide01.jpg")
        case slide02:
            iMG = UIImage(named: "slide02.jpg")
        case slide03:
            iMG = UIImage(named: "slide03.jpg")
        default:
            iMG = UIImage(named: "slide01.jpg")
        }
        imageView.image = iMG
    }
    
    // タイマーによってコールされるメソッド
    func update(tm: Timer){
        imageIndex += 1
        if imageIndex == 3{
            imageIndex= 0
        }
    }

}


