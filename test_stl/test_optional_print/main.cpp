#include <optional>
#include <iostream>

template <typename Type>
struct ValuePrinter
{
    const Type& value;
};

template <typename Type>
inline auto makeValuePrinter(const Type& value)
{
    return ValuePrinter<Type>{value};
}

template <typename T>
auto print(const std::optional<T>& opt)
{
    return makeValuePrinter(opt);
}

template <typename Output, typename T>
Output& operator<<(Output& os, const ValuePrinter<std::optional<T>>& opt)
{
    if (opt.value)
    {
        os << *opt.value;
        std::cout << "value=" << *opt.value << std::endl;
    }
    else
    {
        os << "--";
        std::cout << "==--++--" << std::endl;
    }
    return os;
}

int main()
{
    std::optional<int> opt = {};
    std::cout << print(opt);
    std::cout << "+++++++++++++++++++" << std::endl;
    opt = std::nullopt;
    std::cout << print(opt);
    std::cout << "+++++++++++++++++++" << std::endl;
    opt = 123;
    std::cout << print(opt);
    std::cout << "+++++++++++++++++++" << std::endl;
	
	opt = std::nullopt;
 
    try {
        [[maybe_unused]] int n = opt.value();
    } catch(const std::bad_optional_access& e) {
        std::cout << e.what() << '\n';
    }
    try {
        opt.value() = 42;
    } catch(const std::bad_optional_access& e) {
        std::cout << e.what() << '\n';
    }
 
    opt = 43;
    std::cout << *opt << '\n';
 
    opt.value() = 44;
    std::cout << opt.value() << '\n';
}