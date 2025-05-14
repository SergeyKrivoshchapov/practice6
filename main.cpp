#include "wifi.h"

int main() {
    try {
        // создание экземпляров класса на стеке
        Wifi router1;
        Wifi router2("TP-LINK", 8, true);

        // вывод сведений об объектах
        std::cout << "Router1" << std::endl;
        router1.print_router_data();

        std::cout << "Router2" << std::endl;
        router2.print_router_data();

        Wifi router3(router2); // инициализация экземпляра как копии другого
        std::cout << "Router3 (copy of router2)" << std::endl;
        router3.print_router_data();

        field_changing(router1); // вызов функции изменения поля

        // вызов функции инициализации в динамической памяти
        Wifi* dynamic_router1 = create_router();
        Wifi* dynamic_router2 = create_router();

        // проверка на успешность инициализации, вывод сведений о инициализированном экземпляре
        if (dynamic_router1) {
            std::cout << "First dynamic router: " << std::endl;
            dynamic_router1->print_router_data();
        } else {
            std::cout << "First dynamic router creation failed" << std::endl;
        }
        if (dynamic_router2) {
            std::cout << "Second dynamic router: " << std::endl;
            dynamic_router2->print_router_data();
        } else {
            std::cout << "Second dynamic router creation failed" << std::endl;
        }

        // освобождение динамической памяти
        delete dynamic_router1;
        delete dynamic_router2;
    }
    // обработка исключений
    catch (std::exception& exp) {
        std::cout << exp.what() << std::endl;
        return 1;
    }
    return 0;
}