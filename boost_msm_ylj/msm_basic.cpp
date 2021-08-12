#include <iostream>
#include <boost/msm/front/state_machine_def.hpp>
#include <boost/msm/back/state_machine.hpp>

namespace{
    // The event definition
    struct Event1{
    Event1() {std::cout << "entering: Event1" << std::endl;};
    };
    struct Event2{};
    struct Event3{};
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

        // The action definition
        void Event1_action(Event1 const&)   { std::cout << "Event1_action\n"; }
        void Event2_action(Event2 const&)   { std::cout << "Event2_action\n"; }
        void Event3_action(Event3 const&)   { std::cout << "Event3_action\n"; }

        using initial_state = boost::mpl::vector<Step1>;
        struct transition_table : boost::mpl::vector<
            //         Start                     Event                  Target                 Action                  Guard
            //       +--------------------- ---+----------------------+----------------------+--------------------------+--------------------------+
                a_row< Step1                    , Event1               , Step2                , &TestFSM_::Event1_action    >,
                a_row< Step2                    , Event2               , Step3                , &TestFSM_::Event2_action    >,
                a_row< Step3                    , Event3               , Done                 , &TestFSM_::Event3_action    >
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
