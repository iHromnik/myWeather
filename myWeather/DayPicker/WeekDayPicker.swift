//
//  DayPickerControl.swift
//  myWeather
//
//  Created by iHRomnik on 01.03.2024.
//

import UIKit

class WeekDayPicker: UIControl {
    
    var selectedDay: Day? = nil {
        didSet {
            self.updateSelectedDay()
            self.sendActions(for: .valueChanged)
        }
    }
    
    
    private var buttons: [UIButton] = []
    private var stackView: UIStackView!
    
    
    private func setupView() {
        for day in Day.allDay {
            let button = UIButton(type: .system)
            button.setTitle(day.title, for: .normal)
            button.setTitleColor(.blue, for: .normal)
            button.setTitleColor(.yellow, for: .selected)
            button.addTarget(self, action: #selector(selectDay(_ :)), for: .touchUpInside)
            
            self.buttons.append(button)
        }
        
        stackView = UIStackView(arrangedSubviews: buttons)
        self.addSubview(stackView)
        stackView.spacing = 8
        stackView.axis = .horizontal
        stackView.alignment = .center
        stackView.distribution = .fillEqually
        
    }
    
   private func updateSelectedDay() {
        for (index, button) in self.buttons.enumerated() {
            guard let day = Day(rawValue: index) else {return}
            button.isSelected = day == self.selectedDay
        }
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.stackView.frame = bounds
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    @objc func selectDay(_ sender:UIButton) {
        print(#function)
        guard let index = self.buttons.firstIndex(of: sender) else {return}
        guard let day = Day(rawValue: index) else {return}
        self.selectedDay = day
        
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
