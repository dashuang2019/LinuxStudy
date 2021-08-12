#include <iostream>
#include <boost/msm/back/state_machine.hpp>
 
#include <boost/msm/front/state_machine_def.hpp>
#include <boost/msm/front/functor_row.hpp>
 
namespace {
    namespace msm = boost::msm;
    namespace msmf = boost::msm::front;
    namespace mpl = boost::mpl;
 
    // ----- Events
    struct Event1 {
		Event1() {
			std::cout << "Construct Event1" << std::endl;
		}
		~Event1() {
			std::cout << "Destruct Event1" << std::endl;
		}
	};
    struct Event2 {
		Event2() {
			std::cout << "Construct Event2" << std::endl;
		}
		~Event2() {
			std::cout << "Destruct Event2" << std::endl;
		}
	};
    struct InitialEvent {
		InitialEvent() {
			std::cout << "Construct InitialEvent" << std::endl;
		}
		~InitialEvent() {
			std::cout << "Destruct InitialEvent" << std::endl;
		}
	};
    // ----- State machine
    struct Sm1_:msm::front::state_machine_def<Sm1_>
    {
		Sm1_() {
			std::cout << "Construct Sm1_" << std::endl;
		}
		~Sm1_() {
			std::cout << "Destruct Sm1_" << std::endl;
		}
        typedef InitialEvent initial_event;
        // States
        struct State1:msm::front::state<> 
        {
			State1() {
				std::cout << "Construct State1" << std::endl;
			}
			~State1() {
				std::cout << "Destruct State1" << std::endl;
			}
            // Entry action
            template <class Fsm>
            void on_entry(InitialEvent const&, Fsm&) const {
                std::cout << "State1::on_entry(InitialEvent)" << std::endl;
            }
            template <class Fsm>
            void on_entry(Event1 const&, Fsm&) const {
                std::cout << "State1::on_entry(Event1)" << std::endl;
            }
            template <class Fsm>
            void on_entry(Event2 const&, Fsm&) const {
                std::cout << "State1::on_entry(Event2)" << std::endl;
            }
            // Exit action
            template <class Fsm>
            void on_exit(Event1 const&, Fsm&) const {
                std::cout << "State1::on_exit(Event1)" << std::endl;
            }
            template <class Fsm>
            void on_exit(Event2 const&, Fsm&) const {
                std::cout << "State1::on_exit(Event2)" << std::endl;
            }
        };
        struct State2:msm::front::state<> 
        {
			State2() {
				std::cout << "Construct State2" << std::endl;
			}
			~State2() {
				std::cout << "Destruct State2" << std::endl;
			}
            // Entry action
            template <class Fsm>
            void on_entry(Event1 const&, Fsm&) const {
                std::cout << "State2::on_entry(Event1)" << std::endl;
            }
            template <class Fsm>
            void on_entry(Event2 const&, Fsm&) const {
                std::cout << "State2::on_entry(Event2)" << std::endl;
            }
            // Exit action
            template <class Fsm>
            void on_exit(Event1 const&, Fsm&) const {
                std::cout << "State2::on_exit(Event1)" << std::endl;
            }
            template <class Fsm>
            void on_exit(Event2 const&, Fsm&) const {
                std::cout << "State2::on_exit(Event2)" << std::endl;
            }
        };
 
        struct Action1 {
			Action1() {
				std::cout << "Construct Action1" << std::endl;
			}
			~Action1() {
				std::cout << "Destruct Action1" << std::endl;
			}
            template <class Fsm>
            void operator()(Event1 const& e, Fsm&, State1&, State2&) const
            {
                std::cout << "Action1(Event1, Fsm, State1, State2)" << std::endl;
            }
            template <class Fsm>
            void operator()(Event2 const& e, Fsm&, State1&, State2&) const
            {
                std::cout << "Action1(Event2, Fsm, State1, State2)" << std::endl;
            }
            template <class Fsm>
            void operator()(Event1 const& e, Fsm&, State2&, State1&) const
            {
                std::cout << "Action1(Event1, Fsm, State2, State1)" << std::endl;
            }
            template <class Fsm>
            void operator()(Event2 const& e, Fsm&, State2&, State1&) const
            {
                std::cout << "Action1(Event2, Fsm, State2, State1)" << std::endl;
            }
        };
 
        struct Guard1 {
			Guard1() {
				std::cout << "Construct Guard1" << std::endl;
			}
			~Guard1() {
				std::cout << "Destruct Guard1" << std::endl;
			}
            template <class Fsm>
            bool operator()(Event1 const& e, Fsm&, State1&, State2&) const
            {
                std::cout << "Guard1(Event1, Fsm, State1, State2)" << std::endl;
                return true;
            }
            template <class Fsm>
            bool operator()(Event2 const& e, Fsm&, State1&, State2&) const
            {
                std::cout << "Guard1(Event2, Fsm, State1, State2)" << std::endl;
                return true;
            }
            template <class Fsm>
            bool operator()(Event1 const& e, Fsm&, State2&, State1&) const
            {
                std::cout << "Guard1(Event1, Fsm, State2, State1)" << std::endl;
                return true;
            }
            template <class Fsm>
            bool operator()(Event2 const& e, Fsm&, State2&, State1&) const
            {
                std::cout << "Guard1(Event2, Fsm, State2, State1)" << std::endl;
                return true;
            }
        };
 
        // Set initial state
        typedef State1 initial_state;
 
        // Transition table
        struct transition_table:mpl::vector<
            //          Start   Event   Next    Action   Guard
            msmf::Row < State1, Event1, State2, Action1, Guard1 >,
            msmf::Row < State1, Event2, State2, Action1, Guard1 >,
            msmf::Row < State2, Event1, State1, Action1, Guard1 >,
            msmf::Row < State2, Event2, State1, Action1, Guard1 >
        > {};
    };
 
    // Pick a back-end
    typedef msm::back::state_machine<Sm1_> Sm1;
 
    void test()
    {        
        Sm1 sm1;
        std::cout << "After created Sm1 object." << std::endl;
        sm1.start(); 
        std::cout << ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>" << std::endl;
        std::cout << "> Send Event1" << std::endl;
        sm1.process_event(Event1());
        std::cout << ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>" << std::endl;
        std::cout << "> Send Event1" << std::endl;
        sm1.process_event(Event1());
        std::cout << ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>" << std::endl;
        std::cout << "> Send Event2" << std::endl;
        sm1.process_event(Event2());
        std::cout << ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>" << std::endl;
        std::cout << "> Send Event2" << std::endl;
        sm1.process_event(Event2());
        std::cout << ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>" << std::endl;
    }
}
 
int main()
{
    std::cout << "main starting ..." << std::endl;
    test();
    std::cout << "main ended ..." << std::endl;
    return 0;
}
 
// Output:
//
// State1::on_entry(InitialEvent)
// > Send Event1
// Guard1(Event1, Fsm, State1, State2)
// State1::on_exit(Event1)
// Action1(Event1, Fsm, State1, State2)
// State2::on_entry(Event1)
// > Send Event1
// Guard1(Event1, Fsm, State2, State1)
// State2::on_exit(Event1)
// Action1(Event1, Fsm, State2, State1)
// State1::on_entry(Event1)
// > Send Event2
// Guard1(Event2, Fsm, State1, State2)
// State1::on_exit(Event2)
// Action1(Event2, Fsm, State1, State2)
// State2::on_entry(Event2)
// > Send Event2
// Guard1(Event2, Fsm, State2, State1)
// State2::on_exit(Event2)
// Action1(Event2, Fsm, State2, State1)
// State1::on_entry(Event2)