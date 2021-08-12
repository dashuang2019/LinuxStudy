#include <algorithm>
#include <iostream>
#include <vector>
#include <iterator>
#include <numeric>
#include <string>
#include <memory>
#include <exception>

class person
{
public:
    person(int id, int age, std::string name):
		id{id},
		age{age},
		name{name}
    {
		std::cout << "Normal constructor" << std::endl;
	}
	person(const person &p):
		id{p.id},
		age{p.age},
		name{p.name}
	{
       std::cout<<"copy constructor" << std::endl;
    }
	person(const person &&p):
		id{p.id},
		age{p.age},
		name{p.name}
	{
       std::cout<<"move constructor" << std::endl;
    }
    int id;
    int age;
    std::string name;
};

void std_copy(std::vector<person> from_vector)
{
    // std::copy
	std::cout << "=============== std::copy ==============" << std::endl;
    std::vector<person> copy_vector;
    std::copy(from_vector.begin(), from_vector.end(),
              std::back_inserter(copy_vector));
    from_vector.at(0).id = 15;
    from_vector.at(0).age = 45;
    std::cout << "copy: id=" << copy_vector.at(0).id << ", age=" << copy_vector.at(0).age << std::endl;
}

void std_move(std::vector<person> from_vector)
{
    // std::move
	std::cout << "=============== std::move ==============" << std::endl;
    std::vector<person> move_vector;
    std::move(from_vector.begin(), from_vector.end(),
              std::back_inserter(move_vector));
    from_vector.at(0).id = 17;
    from_vector.at(0).age = 55;
    std::cout << "move: id=" << move_vector.at(0).id << ", age=" << move_vector.at(0).age << std::endl;
}


void std_copy(std::vector<std::shared_ptr<person>> from_share_ptr_vector)
{
    // std::copy
	std::cout << "=============== std::copy ==============" << std::endl;
    std::vector<std::shared_ptr<person>> copy_vector;
    std::copy(from_share_ptr_vector.begin(), from_share_ptr_vector.end(),
              std::back_inserter(copy_vector));
	std::cout << "after std::copy, from_share_ptr_vector size=" << from_share_ptr_vector.size() << std::endl;
    from_share_ptr_vector.at(0)->id = 15;
    from_share_ptr_vector.at(0)->age = 45;
    std::cout << "copy: id=" << copy_vector.at(0)->id << ", age=" << copy_vector.at(0)->age << std::endl;
}

void std_move(std::vector<std::shared_ptr<person>> from_share_ptr_vector)
{
	// std::move
	std::cout << "=============== std::move ==============" << std::endl;
	std::vector<std::shared_ptr<person>> move_vector;
	std::cout << "before std::move" << std::endl;
	std::move(from_share_ptr_vector.begin(), from_share_ptr_vector.end(),
			  std::back_inserter(move_vector));
	std::cout << "after std::move, from_share_ptr_vector size=" << from_share_ptr_vector.size() << std::endl;
	auto& v0 = from_share_ptr_vector.at(0);
	auto& v1 = from_share_ptr_vector.at(1);
	auto& v2 = from_share_ptr_vector.at(2);
	std::cout << "after std::move, from_share_ptr_vector v0=" << v0 << ", v1=" << v1 << ", v2=" << v2 << std::endl;
	//from_share_ptr_vector.at(0)->id = 17;
	//from_share_ptr_vector.at(0)->age = 55;
	std::cout << "size=" << move_vector.size() << std::endl;
	std::cout << "move: id=" << move_vector.at(0)->id << ", age=" << move_vector.at(0)->age << std::endl;
}

///////////////////////////  unique_ptr //////////////////////////////////////
/*void std_copy(std::vector<std::unique_ptr<person>>& from_unique_ptr_vector)
{
    // std::copy
    std::vector<std::unique_ptr<person>> copy_vector;
    std::copy(from_unique_ptr_vector.begin(), from_unique_ptr_vector.end(),
              std::back_inserter(copy_vector));
	std::cout << "after std::copy, from_unique_ptr_vector size=" << from_unique_ptr_vector.size() << std::endl;
    from_unique_ptr_vector.at(0)->id = 15;
    from_unique_ptr_vector.at(0)->age = 45;
    std::cout << "copy: id=" << copy_vector.at(0)->id << ", age=" << copy_vector.at(0)->age << std::endl;
}

void std_move(std::vector<std::unique_ptr<person>> from_unique_ptr_vector)
{
	// std::move
	std::vector<std::unique_ptr<person>> move_vector;
	std::cout << "before std::move" << std::endl;
	std::move(from_unique_ptr_vector.begin(), from_unique_ptr_vector.end(),
			  std::back_inserter(move_vector));
	std::cout << "after std::move, from_unique_ptr_vector size=" << from_unique_ptr_vector.size() << std::endl;
	auto v0 = std::move(from_unique_ptr_vector.at(0));
	auto v1 = std::move(from_unique_ptr_vector.at(1));
	auto v2 = std::move(from_unique_ptr_vector.at(2));
	std::cout << "after std::move, from_unique_ptr_vector v0=" << std::remove_reference(v0) << ", v1=" << std::remove_reference(v1) << ", v2=" << std::remove_reference(v2) << std::endl;
	//from_unique_ptr_vector.at(0)->id = 17;
	//from_unique_ptr_vector.at(0)->age = 55;
	std::cout << "size=" << move_vector.size() << std::endl;
	std::cout << "move: id=" << move_vector.at(0)->id << ", age=" << move_vector.at(0)->age << std::endl;
}
*/
/*void std_copy(std::vector<person> from_vector)
{
    // std::copy
    std::vector<person> copy_vector;
    std::copy(from_vector.begin(), from_vector.end(),
              std::back_inserter(copy_vector));
    from_vector.at(0).id = 15;
    from_vector.at(0).age = 45;
    std::cout << "copy: id=" << copy_vector.at(0).id << ", age=" << copy_vector.at(0).age << std::endl;
}

void std_move(std::vector<person> from_vector)
{
    // std::move
    std::vector<person> move_vector;
    std::move(from_vector.begin(), from_vector.end(),
              std::back_inserter(move_vector));
    from_vector.at(0).id = 17;
    from_vector.at(0).age = 55;
    std::cout << "move: id=" << move_vector.at(0).id << ", age=" << move_vector.at(0).age << std::endl;
}
*/
int main()
{
    std::cout << "------- use std::vector<person> ----------" << std::endl;
    std::vector<person> from_vector{};
    from_vector.emplace_back(person{11, 30, "zhang"});
    from_vector.emplace_back(person{12, 33, "li"});
    from_vector.emplace_back(person{13, 40, "wu"});

    std::cout << "------- before copy ----------" << std::endl;
    std_copy(from_vector);
    std::cout << "------- before move ----------" << std::endl;
    std_move(from_vector);
    std::cout << "-----------------" << std::endl << std::endl;

    std::cout << "------- std::vector<std::shared_ptr<person>> ----------" << std::endl;
    std::vector<std::shared_ptr<person>> from_shared_ptr_vector{};
    from_shared_ptr_vector.emplace_back(std::make_shared<person>(11, 30, "zhang"));
    from_shared_ptr_vector.emplace_back(std::make_shared<person>(12, 33, "li"));
    from_shared_ptr_vector.emplace_back(std::make_shared<person>(13, 40, "wu"));

    std::cout << "------- before copy ----------" << std::endl;
    std_copy(from_shared_ptr_vector);
    std::cout << "------- before move ----------" << std::endl;
    std_move(from_shared_ptr_vector);
    std::cout << "-----------------" << std::endl << std::endl;
/*
    std::cout << "------- std::vector<std::unique_ptr<person>> ----------" << std::endl;
    std::vector<std::unique_ptr<person>> from_unique_ptr_vector{};
    from_unique_ptr_vector.emplace_back(std::make_unique<person>(11, 30, "zhang"));
    from_unique_ptr_vector.emplace_back(std::make_unique<person>(12, 33, "li"));
    from_unique_ptr_vector.emplace_back(std::make_unique<person>(13, 40, "wu"));

    std_copy(from_unique_ptr_vector);
    std_move(from_unique_ptr_vector);

    std::vector<person&> from_ref_vector{};
    from_ref_vector.emplace_back(person{11, 30, "zhang"});
    from_ref_vector.emplace_back(person{12, 33, "li"});
    from_ref_vector.emplace_back(person{13, 40, "wu"});
*/
}
