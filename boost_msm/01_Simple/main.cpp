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
        void operator()() { std::cout << "Build Event1" << std::endl; }
    };
 
    // ----- State machine
    struct Sm1_ : msmf::state_machine_def<Sm1_>
    {
        // States
        struct State1 : msmf::state<> 
        {
            // Entry action
            template <class Event,class Fsm>
            void on_entry(Event const&, Fsm&) const {
                std::cout << "State1::on_entry()" << std::endl;
            }
            // Exit action
            template <class Event,class Fsm>
            void on_exit(Event const&, Fsm&) const {
                std::cout << "State1::on_exit()" << std::endl;
            }
        };
        struct End:msmf::terminate_state<> {};
 
        // Set initial state
        typedef State1 initial_state;
 
        // Transition table
        struct transition_table:mpl::vector<
            //          Start   Event   Next    Action      Guard
            msmf::Row < State1, Event1, End,    msmf::none, msmf::none >
        > {};
    };
 
    // Pick a back-end
    typedef msm::back::state_machine<Sm1_> Sm1;
 
    void test()
    {        
        Sm1 sm1;
        sm1.start(); 
        std::cout << "> Send Event1" << std::endl;
        sm1.process_event(Event1());
        std::cout << "> After process_event Event1" << std::endl;
    }
}
 
int main()
{
    test();
    return 0;
}