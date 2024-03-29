#include <iostream>
#include <boost/msm/back/state_machine.hpp>
 
#include <boost/msm/front/state_machine_def.hpp>
#include <boost/msm/front/functor_row.hpp>
 
namespace {
    namespace msm = boost::msm;
    namespace msmf = boost::msm::front;
    namespace mpl = boost::mpl;
 
    // ----- Events
    struct Event1 {};
    struct Event2 {};
 
    // ----- State machine
    struct Sm1_:msmf::state_machine_def<Sm1_>
    {
        // States
        struct State1:msmf::state<> 
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
 
        // Set initial state
        typedef State1 initial_state;
 
        // Actions
        struct Action1 {
            template <class Event, class Fsm, class SourceState, class TargetState>
            void operator()(Event const&, Fsm&, SourceState&, TargetState&) const 
            {
                std::cout << "Action1()" << std::endl;
            }
        };
        struct Action2 {
            template <class Event, class Fsm, class SourceState, class TargetState>
            void operator()(Event const&, Fsm&, SourceState&, TargetState&) const 
            {
                std::cout << "Action2()" << std::endl;
            }
        };
 
        // Transition table
        struct transition_table:mpl::vector<
            //          Start   Event   Next        Action      Guard
            msmf::Row < State1, Event1, State1,     Action1,    msmf::none >,
            msmf::Row < State1, Event2, msmf::none, Action2,    msmf::none >
        > {};
    };
 
    // Pick a back-end
    typedef msm::back::state_machine<Sm1_> Sm1;
 
    void test()
    {        
        Sm1 sm1;
        std::cout << "Created Sm1 object." << std::endl;
        sm1.start(); 
        std::cout << ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>" << std::endl;
        std::cout << "> Send Event1" << std::endl;
        sm1.process_event(Event1());
        std::cout << ">>>>>>>>>>>>>>>>>>>>>>>>>>>>>" << std::endl;
        std::cout << "> Send Event2" << std::endl;
        sm1.process_event(Event2());
    }
}
 
int main()
{
    test();
    return 0;
}
 
// Output:
//
// State1::on_entry()
// > Send Event1
// State1::on_exit()
// Action1()
// State1::on_entry()
// > Send Event2
// Action2()