//
//  Settings.swift
//  iOS12-HW15-Alexey Cherebayev
//
//  Created by Alex on 15.03.2024.
//

import UIKit

struct Settings {
    let title: String
    let items: [SettingOptionType]
}

enum SettingOptionType {
    case staticCell(model: SettingsItemOption)
    case switchCell(model: SettingsSwitchOption)
}

struct SettingsSwitchOption {
    let title: String
    let icon: UIImage?
    let iconColor: UIColor
    let isOn: Bool
}

struct SettingsItemOption {
    let title: String
    let icon: UIImage?
    let iconColor: UIColor
}

extension Settings {
    static func getSettings() -> [Settings] {
        var items = [Settings]()
        items.append(Settings(title: "", items: [
            .switchCell(
                model: SettingsSwitchOption(
                    title: "Авиарежим",
                    icon: UIImage(systemName: "airplane"),
                    iconColor: .systemOrange,
                    isOn: false
                )
            ),
            .staticCell(
                model: SettingsItemOption(
                    title: "Wi-Fi",
                    icon: UIImage(systemName: "wifi"),
                    iconColor: .systemBlue
                )
            ),
            .staticCell(
                model: SettingsItemOption(
                    title: "Bluetooth",
                    icon: UIImage(systemName: "dot.radiowaves.left.and.right"),
                    iconColor: .systemBlue
                )
            ),
            .staticCell(
                model: SettingsItemOption(
                    title: "Сотовая связь",
                    icon: UIImage(systemName: "antenna.radiowaves.left.and.right"),
                    iconColor: .systemGreen
                )
            ),
            .staticCell(
                model: SettingsItemOption(
                    title: "Режим модема",
                    icon: UIImage(systemName: "personalhotspot"),
                    iconColor: .systemGreen
                )
            ),
            .switchCell(
                model: SettingsSwitchOption(
                    title: "VPN",
                    icon: UIImage(systemName: "network"),
                    iconColor: .systemBlue,
                    isOn: false
                )
            ),
        ]))
        
        items.append(Settings(title: "", items: [
            .staticCell(
                model: SettingsItemOption(
                    title: "Уведомдления", 
                    icon: UIImage(systemName: "app.badge"),
                    iconColor: .systemRed
                )
            ),
            .staticCell(
                model: SettingsItemOption(
                    title: "Звуки, тактильные сигналы",
                    icon: UIImage(systemName: "speaker.wave.3"),
                    iconColor: .systemRed
                )
            ),
            .staticCell(
                model: SettingsItemOption(
                    title: "Не беспокоить",
                    icon: UIImage(systemName: "moon.fill"),
                    iconColor: .systemBlue
                )
            ),
            .staticCell(
                model: SettingsItemOption(
                    title: "Экранное время",
                    icon: UIImage(systemName: "hourglass"),
                    iconColor: .systemBlue
                )
            ),
        ]))
        
        items.append(Settings(title: "", items: [
            .staticCell(
                model: SettingsItemOption(
                    title: "Основное",
                    icon: UIImage(systemName: "gear"),
                    iconColor: .systemGray
                )
            ),
            .staticCell(
                model: SettingsItemOption(
                    title: "Пункт управления",
                    icon: UIImage(systemName: "slider.horizontal.3"),
                    iconColor: .systemGray
                )
            ),
            .staticCell(
                model: SettingsItemOption(
                    title: "Экран и яркость",
                    icon: UIImage(systemName: "sun.max.fill"),
                    iconColor: .systemBlue
                )
            ),
            .staticCell(
                model: SettingsItemOption(
                    title: "Универсальный доступ",
                    icon: UIImage(systemName: "accessibility"),
                    iconColor: .systemBlue
                )
            ),
        ]))
        
        return items
    }
}
