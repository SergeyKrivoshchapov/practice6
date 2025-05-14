#pragma once

#include <iostream>
#include <string>
#include <stdexcept>

class Wifi {
private:
    std::string vendor; // производитель
    unsigned int port_count; // количество портов
    bool has_5g; // наличие поддержки 5G

    // метод для инициализации полей класса
    void init(const std::string& vendor, unsigned int port_count, bool has_5g);

public:
    // конструктор по умолчанию
    Wifi(const std::string& vendor = "Undefined", unsigned int port_count = 1, bool has_5g = false);
    // конструктор копирования
    Wifi(const Wifi& router_to_copy);
    // деструктор
    ~Wifi() = default;

    // методы доступа
    std::string get_vendor() const {return vendor;};
    unsigned int get_port_count() const {return port_count;};
    bool get_has_5g() const {return has_5g;};

    // вывод сведений о роутере
    void print_router_data() const;

    void change_vendor(const std::string& new_vendor); // метод для изменение имени производителя
    void change_port_count(unsigned int new_port_count); // метод для изменение количества портов
    void change_has_5g(bool new_has_5g); // метод для изменение метки поддержки 5G
};

Wifi* create_router(); // функция для инициализации экземпляра класса в динамической памяти
void field_changing(Wifi& router); // функция для изменения поля экземпляра класса