#include "wifi.h"

void Wifi::init(const std::string& vendor, unsigned int port_count, bool has_5g) {
    if (vendor.empty()) throw std::invalid_argument("Vendor cannot be empty");

    if (port_count < 1 || port_count > 16) throw std::out_of_range("Port count cannot be less than 1 and more than 16");

    this->vendor = vendor;
    this->port_count = port_count;
    this->has_5g = has_5g;
}

Wifi::Wifi(const std::string& vendor, unsigned int port_count, bool has_5g) {
    init(vendor, port_count, has_5g);
}

Wifi::Wifi(const Wifi& router_to_copy) {
    init(router_to_copy.vendor, router_to_copy.port_count, router_to_copy.has_5g);
}

void Wifi::print_router_data() const{
    std::cout << "Vendor name: " << vendor << std::endl;
    std::cout << "Amount of ports: " << port_count << std::endl;
    std::cout << "Has 5G mark? " << (has_5g ? "Yes" : "No" ) << std::endl;
}

void Wifi::change_vendor(const std::string& new_vendor) {
    init(new_vendor, port_count, has_5g);
}

void Wifi::change_port_count(unsigned int new_port_count) {
    init(vendor, new_port_count, has_5g);
}

void Wifi::change_has_5g(bool new_has_5g) {
    init(vendor, port_count, new_has_5g);
}

Wifi* create_router() {
    std::string vendor;
    unsigned int port_count;
    char has_5g;

    try {
        std::cout << "Enter vendor name: ";
        std::getline(std::cin, vendor);
    }catch (std::invalid_argument& e) {return nullptr;}

    std::cout << "Enter amount of ports (1-16): ";
    std::cin >> port_count;
    std::cin.ignore();

    std::cout << "Has 5G mark? (y/n): ";
    std::cin >> has_5g;
    std::cin.ignore();

    try {
        if (has_5g == 'y' || has_5g == 'Y') {
            Wifi* router = new Wifi(vendor, port_count, true);
            return router;
        }
        else if (has_5g == 'n' || has_5g == 'N') {
            Wifi* router = new Wifi(vendor, port_count, false);
            return router;
        }
    } catch (const std::invalid_argument& exp) {
        std::cout << "Invalid argument: " << exp.what() << std::endl;
        return nullptr;
    }

}

void field_changing(Wifi& router) {
    std::cout << "Which field do you want to change?" << std::endl<< "1 = vendor" << std::endl << "2 = port count" << std::endl <<
        "3= 5G mark" << std::endl;

    int field_to_change;
    std::cin >> field_to_change;
    std::cin.ignore();

    switch (field_to_change) {
        case 1: {
            std::string new_vendor;
            std::cout << "Enter new vendor name: ";
            std::getline(std::cin, new_vendor);
            router.change_vendor(new_vendor);
            break;
        }
        case 2: {
            unsigned int new_port;
            std::cout << "Enter new port count (1-16): ";
            std::cin >> new_port;
            std::cin.ignore();
            router.change_port_count(new_port);
            break;
        }
        case 3: {
            char has_5g;
            std::cout << "Has 5G mark? (y/n): ";
            std::cin >> has_5g;
            std::cin.ignore();

            if (has_5g == 'y' || has_5g == 'Y') {
                router.change_has_5g(true);
            }
            else if (has_5g == 'n' || has_5g == 'N') {
                router.change_has_5g(false);
            }
            else {
                throw std::invalid_argument("5G mark must be y or n");
            }
            break;
        }
        default:
            throw std::out_of_range("Choice must be 1, 2 or 3");
    }

    std::cout << "Router after changes: " << std::endl;
    router.print_router_data();
}