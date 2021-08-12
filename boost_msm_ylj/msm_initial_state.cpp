#include <iostream>
#include <boost/msm/front/state_machine_def.hpp>
#include <boost/msm/back/state_machine.hpp>

#include <boost/msm/front/functor_row.hpp>
#include <boost/msm/front/euml/common.hpp>

namespace{
    // The event definition
    struct Event1{
    Event1() {std::cout << "construct Event1" << std::endl;}
    ~Event1() {std::cout << "deconstruct Event1" << std::endl;}
    };
    struct Event2{};
    struct Event3{};

    // The action definition
    struct Action1
    {
        Action1() {std::cout << "construct Action1\n";}
        ~Action1() {std::cout << "deconstruct Action1\n";}
        template <class Fsm,class Evt,class SourceState,class TargetState>
        void operator()(Evt const& , Fsm&, SourceState& ,TargetState& ) 
        {
            std::cout << "Action1\n";
        }
    };

    struct Action2
    {
        Action2() {std::cout << "construct Action2\n";}
        ~Action2() {std::cout << "deconstruct Action2\n";}
        template <class Fsm,class Evt,class SourceState,class TargetState>
        void operator()(Evt const& , Fsm&, SourceState& ,TargetState& ) 
        {
            std::cout << "Action2\n";
        }
    };
    
    struct Action3
    {
        template <class Fsm,class Evt,class SourceState,class TargetState>
        void operator()(Evt const& , Fsm&, SourceState& ,TargetState& ) 
        {
            std::cout << "Action3\n";
        }
    };

    //Guard definition
    struct Guard1
    {
        Guard1() {std::cout << "construct Guard1\n";}
        ~Guard1() {std::cout << "deconstruct Guard1\n";}
        template <class Fsm,class Evt,class SourceState,class TargetState>
        bool operator()(Evt const& , Fsm&, SourceState& ,TargetState& ) 
        {
            std::cout << "entering: Guard1" << std::endl;
            return true;
        }
    };
    
    struct Guard2
    {
        Guard2() {std::cout << "construct Guard2\n";}
        ~Guard2() {std::cout << "deconstruct Guard2\n";}
        template <class Fsm,class Evt,class SourceState,class TargetState>
        bool operator()(Evt const& , Fsm&, SourceState& ,TargetState& ) 
        {
            std::cout << "entering: Guard2" << std::endl;
            return true;
        }
    };
    
    struct Guard3
    {
        template <class Fsm,class Evt,class SourceState,class TargetState>
        bool operator()(Evt const& , Fsm&, SourceState& ,TargetState& ) 
        {
            std::cout << "entering: Guard3" << std::endl;
            return true;
        }
    };
    
    // Concrete FSM implementation
    struct TestFSM_ : public boost::msm::front::state_machine_def<TestFSM_>
    {
        // The list of FSM states
        struct Step1 : public boost::msm::front::state<> 
        {
            template <class Event,class FSM>
            void on_entry(Event const&,FSM& ) {std::cout << "entering: step1" << std::endl;}
            template <class Event,class FSM>
            void on_exit(Event const&,FSM& ) {std::cout << "leaving: step1" << std::endl;}
        };

        struct Step2 : public boost::msm::front::state<> 
        { 
            template <class Event,class FSM>
            void on_entry(Event const&,FSM& ) {std::cout << "entering: step2" << std::endl;}
            template <class Event,class FSM>
            void on_exit(Event const&,FSM& ) {std::cout << "leaving: step2" << std::endl;}
        };

        struct Step3 : public boost::msm::front::state<> 
        { 

            template <class Event,class FSM>
            void on_entry(Event const&,FSM& ) {std::cout << "entering: step3" << std::endl;}
            template <class Event,class FSM>
            void on_exit(Event const&,FSM& ) {std::cout << "leaving: step3" << std::endl;}
        };
        
        struct Done : public boost::msm::front::state<> 
        { 

            template <class Event,class FSM>
            void on_entry(Event const&,FSM& ) {std::cout << "entering: Done" << std::endl;}
            template <class Event,class FSM>
            void on_exit(Event const&,FSM& ) {std::cout << "leaving: Done" << std::endl;}
        };

        using initial_state = boost::mpl::vector<Step1,Step2,Step3>;
        struct transition_table : boost::mpl::vector<
            //                          Start              Event                  Target                 Action              Guard
            //  +----------------------------------------+----------------------+----------------------+------------------+----------+
                boost::msm::front::Row< Step1            , Event1               , Step2                , Action1          ,  Guard1>,
                boost::msm::front::Row< Step2            , Event1               , Step3                , Action2          ,  Guard2>,
                boost::msm::front::Row< Step3            , Event3               , Done                 , Action3          ,  Guard3>
        > {};

        // Replaces the default no-transition response.
        template <class FSM,class Event>
        void no_transition(Event const& e, FSM&,int state)
        {
            std::cout << "no transition from state " << state
                << " on event " << typeid(e).name() << std::endl;
        }
    };

    //#include <boost/msm/back/state_machine.hpp>
    using TestFSM = boost::msm::back::state_machine<TestFSM_>;

    void test()
    {
        TestFSM testFSM;
        // needed to start the highest-level SM. This will call on_entry and mark the start of the SM
        testFSM.start(); 
        testFSM.process_event(Event1());
    }

} // namespace

int main()
{
    test();
    return 0;
}
