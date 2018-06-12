//
//  DataService.swift
//  Register
//
//  Created by nguyễn hữu đạt on 6/7/18.
//  Copyright © 2018 nguyễn hữu đạt. All rights reserved.
//

import UIKit

typealias DICT = Dictionary<AnyHashable,Any>
class DataService {
//    var saveData : [String: Any?] = ["Districts":nil,"Cities":nil,"age":nil]
    static let shared : DataService = DataService()

    private var _cities : [City]?
    var cities : [City]{
        get {
            if _cities == nil{
                getDataCities()
            }
            return _cities ?? []
        }
        set {
            _cities = newValue
        }
    }
    private func getDataCities() {
        _cities = []
        guard let dictionary = PlistService().getDataFromPlist(plist: "Cities.plist") else { return }
        guard let citiesDictionary = dictionary["Cities"] as? [DICT] else { return }
        for cityDictionary in citiesDictionary {
            if let city = City(dict: cityDictionary) {
                _cities?.append(city)
            }
        }
    }
    
    
    private var _districts : [Districts]?
    var selectedDistrict : Int?
    var districts : [Districts]{
        get {
            if _districts == nil {
                getDataDistricts()
            }
            return (_districts == nil) ? [] : (_districts?.filter({ $0.cityCode == selectedDistrict}) ?? [])
        }
        set {
            _districts = newValue
        }
    }
//    var arr: [String] = []
//    func filter(index: IndexPath){
//        getDataDistricts()
//
//        for i in districts {
//      //      print(i.cityCode)
//            if i.cityCode == cities[index.row].cityCode{
//                arr.append(i.name)
//            }
//        }
//    }
    private func getDataDistricts() {
        _districts = []
        guard let dictionary = PlistService().getDataFromPlist(plist: "Districts.plist") else { return  }
        guard let districtsDictionary = dictionary["Districts"] as? [DICT] else { return  }
        for districtDictionary in districtsDictionary {
            if let district = Districts(dict: districtDictionary) {
                _districts?.append(district)
            }
        }
    }
    
//    private func loadData(){
//        _cities = []
//        // Xac dinh duong dan cua file plist
//        if let path = Bundle.main.url(forResource: "Cities", withExtension: "plist") {
//            do {
//                // lay data tu duong dan den file plist
//                let data = try Data(contentsOf: path)
//                
//                // giai nen data sang dinh danh co the doc duoc
//                let result = try PropertyListSerialization.propertyList(from: data, options: .mutableContainers, format: nil)
//
//                // Ep ket qua giai nen duoc sang dinh dang ma dung duoc
//                guard let root = result as? DICT else { return }
//
//                // Lay value cities theo key la Cities
//                guard let cities = root["Cities"] as? [DICT] else { return }
//                for cityObject in cities {
//                    if let city = City(dict: cityObject) {
//                        self.cities.append(city)
//                    }
//                }
//                self.cities.forEach { print($0.name, $0.cityCode) }
//            } catch {
//                print(error.localizedDescription)
//            }
//        }
//
//    }
//    private func loadData1(){
//        _districts = []
//        // Xac dinh duong dan cua file plist
//        if let path = Bundle.main.url(forResource: "Districts", withExtension: "plist") {
//            do {
//                // lay data tu duong dan den file plist
//                let data = try Data(contentsOf: path)
//
//                // giai nen data sang dinh danh co the doc duoc
//                let result = try PropertyListSerialization.propertyList(from: data, options: .mutableContainers, format: nil)
//
//                // Ep ket qua giai nen duoc sang dinh dang ma dung duoc
//                guard let root = result as? DICT else { return }
//
//                // Lay value cities theo key la Cities
//                guard let districts = root["Districts"] as? [DICT] else { return }
//                for districtsObject in districts {
//                    if let district = Districts(dict: districtsObject) {
//                        self.districts.append(district)
//                    }
//                }
//                self.districts.forEach { print($0.name, $0.cityCode,$0.districts) }
//            } catch {
//                print(error.localizedDescription)
//            }
//        }
//
//    }
}

