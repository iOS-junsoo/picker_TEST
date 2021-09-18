import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var picker: UIPickerView!

    let data = ["초등학생", "중학생", "고등학생", "대학생", "직장인"] //content를 배열로 입력
    
    override func viewDidLoad() {
        super.viewDidLoad()
        picker.dataSource = self
        //dataSource는 UIPickerViewDataSource 프로토콜을 채택하고 각 구성 요소에 있는 구성 요소의 수와 행 수를 반환하는 데 필요한 메서드를 구현해야 합니다.
        picker.delegate = self
        //delegate는 UIPickerViewDelegate 프로토콜을 채택하고 각 구성 요소의 행에 대한 그리기 사각형을 반환하는 데 필요한 메서드를 구현해야 합니다.
    }


}
extension ViewController: UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    } //columns(열)의 수를 반환한다.
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return data.count
    } //rows(행)의 수를 반환한다.
    
    
    
}

extension ViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return data[row]
        
        //picker View 내부에 들어갈 내용을 반환한다. 
    }
}
