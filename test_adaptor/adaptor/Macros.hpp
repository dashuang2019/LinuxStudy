#pragma once

#include <functional>

/***/
/**@def COMMON_I_CCS_ADAPTOR_P0
 * Declaration of Interfaces for Ccs-Functions with 0 Parameter.
 * COMMON_I_CCS_ADAPTOR_P0(AaFunctionName, functorInstanceName,
 * methodRetType)
 * Following definitions / names are build automatically from the AaFunctionName:
 * Interface Class:    IAaFunctionName
 * Interface Function: utFcnAaFunctionName
 * Interface Mock:     AaFunctionNameMock
 * Return Type:        TAaFunctionNameRet
 * Functor Type:       TAaFunctionNameFunctor
 */
#define COMMON_I_CCS_ADAPTOR_P0(AaFunctionName, functorInstanceName, methodRetType) \
    class I##AaFunctionName                                                         \
    {                                                                               \
    public:                                                                         \
        virtual ~I##AaFunctionName() = default;                                     \
        virtual methodRetType utFcn##AaFunctionName() = 0;                          \
    };                                                                              \
                                                                                    \
    typedef methodRetType T##AaFunctionName##Ret;                                   \
    typedef std::function<methodRetType()> T##AaFunctionName##Functor;              \
    extern T##AaFunctionName##Functor functorInstanceName;                          \
// end Macro COMMON_I_CCS_ADAPTOR_P0

/***/
/**@def COMMON_I_CCS_ADAPTOR_P1
 * Declaration of Interfaces for Ccs-Functions with 1 Parameter.
 * COMMON_I_CCS_ADAPTOR_P1(AaFunctionName, functorInstanceName,
 * methodRetType,
 * methodPar1Type)
 * Following definitions / names are build automatically from the AaFunctionName:
 * Interface Class:    IAaFunctionName
 * Interface Function: utFcnAaFunctionName
 * Interface Mock:     AaFunctionNameMock
 * Return Type:        TAaFunctionNameRet
 * Parameter 1 Type:   TAaFunctionNameP1
 * Functor Type:       TAaFunctionNameFunctor
 */
#define COMMON_I_CCS_ADAPTOR_P1(AaFunctionName, functorInstanceName, methodRetType, methodPar1Type) \
    class I##AaFunctionName                                                                         \
    {                                                                                               \
    public:                                                                                         \
        virtual ~I##AaFunctionName() = default;                                                     \
        virtual methodRetType utFcn##AaFunctionName(methodPar1Type) = 0;                            \
    };                                                                                              \
                                                                                                    \
    typedef methodRetType T##AaFunctionName##Ret;                                                   \
    typedef methodPar1Type T##AaFunctionName##P1;                                                   \
    typedef std::function<methodRetType(methodPar1Type)> T##AaFunctionName##Functor;                \
    extern T##AaFunctionName##Functor functorInstanceName;                                          \
// end Macro COMMON_I_CCS_ADAPTOR_P1

/***/
/**@def COMMON_I_CCS_ADAPTOR_P2
 * Declaration of Interfaces for Ccs-Functions with 2 Parameter.
 * COMMON_I_CCS_ADAPTOR_P2(AaFunctionName, functorInstanceName,
 * methodRetType,
 * methodPar1Type, methodPar2Type)
 * Following definitions / names are build automatically from the AaFunctionName:
 * Interface Class:    IAaFunctionName
 * Interface Function: utFcnAaFunctionName
 * Interface Mock:     AaFunctionNameMock
 * Return Type:        TAaFunctionNameRet
 * Parameter 1 Type:   TAaFunctionNameP1
 * Parameter 2 Type:   TAaFunctionNameP2
 * Functor Type:       TAaFunctionNameFunctor
 */
#define COMMON_I_CCS_ADAPTOR_P2(AaFunctionName, functorInstanceName, methodRetType, methodPar1Type, methodPar2Type) \
    class I##AaFunctionName                                                                                         \
    {                                                                                                               \
    public:                                                                                                         \
        virtual ~I##AaFunctionName() = default;                                                                     \
        virtual methodRetType utFcn##AaFunctionName(methodPar1Type, methodPar2Type) = 0;                            \
    };                                                                                                              \
                                                                                                                    \
    typedef methodRetType T##AaFunctionName##Ret;                                                                   \
    typedef methodPar1Type T##AaFunctionName##P1;                                                                   \
    typedef methodPar2Type T##AaFunctionName##P2;                                                                   \
    typedef std::function<methodRetType(methodPar1Type, methodPar2Type)> T##AaFunctionName##Functor;                \
    extern T##AaFunctionName##Functor functorInstanceName;                                                          \
// end Macro COMMON_I_CCS_ADAPTOR_P2

/***/
/**@def COMMON_I_CCS_ADAPTOR_P3
 * Declaration of Interfaces for Ccs-Functions with 3 Parameter.
 * COMMON_I_CCS_ADAPTOR_P3(AaFunctionName, functorInstanceName,
 * methodRetType,
 * methodPar1Type, methodPar2Type, methodPar3Type)
 * Following definitions / names are build automatically from the AaFunctionName:
 * Interface Class:    IAaFunctionName
 * Interface Function: utFcnAaFunctionName
 * Interface Mock:     AaFunctionNameMock
 * Return Type:        TAaFunctionNameRet
 * Parameter 1 Type:   TAaFunctionNameP1
 * Parameter 2 Type:   TAaFunctionNameP2
 * Parameter 3 Type:   TAaFunctionNameP3
 * Functor Type:       TAaFunctionNameFunctor
 */
#define COMMON_I_CCS_ADAPTOR_P3(                                                                                     \
    AaFunctionName, functorInstanceName, methodRetType, methodPar1Type, methodPar2Type, methodPar3Type)              \
    class I##AaFunctionName                                                                                          \
    {                                                                                                                \
    public:                                                                                                          \
        virtual ~I##AaFunctionName() = default;                                                                      \
        virtual methodRetType utFcn##AaFunctionName(methodPar1Type, methodPar2Type, methodPar3Type) = 0;             \
    };                                                                                                               \
                                                                                                                     \
    typedef methodRetType T##AaFunctionName##Ret;                                                                    \
    typedef methodPar1Type T##AaFunctionName##P1;                                                                    \
    typedef methodPar2Type T##AaFunctionName##P2;                                                                    \
    typedef methodPar3Type T##AaFunctionName##P3;                                                                    \
    typedef std::function<methodRetType(methodPar1Type, methodPar2Type, methodPar3Type)> T##AaFunctionName##Functor; \
    extern T##AaFunctionName##Functor functorInstanceName;                                                           \
// end Macro CCS_ADAPTER_INTERFACE3

/***/
/**@def COMMON_I_CCS_ADAPTOR_P4
 * Declaration of Interfaces for Ccs-Functions with 4 Parameter.
 * COMMON_I_CCS_ADAPTOR_P4(AaFunctionName, functorInstanceName,
 * methodRetType,
 * methodPar1Type, methodPar2Type, methodPar3Type, methodPar4Type)
 * Following definitions / names are build automatically from the AaFunctionName:
 * Interface Class:    IAaFunctionName
 * Interface Function: utFcnAaFunctionName
 * Interface Mock:     AaFunctionNameMock
 * Return Type:        TAaFunctionNameRet
 * Parameter 1 Type:   TAaFunctionNameP1
 * Parameter 2 Type:   TAaFunctionNameP2
 * Parameter 3 Type:   TAaFunctionNameP3
 * Parameter 4 Type:   TAaFunctionNameP4
 * Functor Type:       TAaFunctionNameFunctor
 */
#define COMMON_I_CCS_ADAPTOR_P4(                                                                         \
    AaFunctionName,                                                                                      \
    functorInstanceName, /* NOLINT(nokia-no-macros) */                                                   \
    methodRetType,                                                                                       \
    methodPar1Type,                                                                                      \
    methodPar2Type,                                                                                      \
    methodPar3Type,                                                                                      \
    methodPar4Type)                                                                                      \
    class I##AaFunctionName                                                                              \
    {                                                                                                    \
    public:                                                                                              \
        virtual ~I##AaFunctionName() = default;                                                          \
        virtual methodRetType utFcn##AaFunctionName(                                                     \
            methodPar1Type,                                                                              \
            methodPar2Type,                                                                              \
            methodPar3Type,                                                                              \
            methodPar4Type) = 0;                                                                         \
    };                                                                                                   \
                                                                                                         \
    typedef methodRetType T##AaFunctionName##Ret;                                                        \
    typedef methodPar1Type T##AaFunctionName##P1;                                                        \
    typedef methodPar2Type T##AaFunctionName##P2;                                                        \
    typedef methodPar3Type T##AaFunctionName##P3;                                                        \
    typedef methodPar4Type T##AaFunctionName##P4;                                                        \
    typedef std::function<methodRetType(methodPar1Type, methodPar2Type, methodPar3Type, methodPar4Type)> \
        T##AaFunctionName##Functor;                                                                      \
    extern T##AaFunctionName##Functor functorInstanceName;                                               \
// end Macro CCS_ADAPTER_INTERFACE4

/***/
/**@def COMMON_I_CCS_ADAPTOR_P5
 * Declaration of Interfaces for Ccs-Functions with 5 Parameter.
 * COMMON_I_CCS_ADAPTOR_P5(AaFunctionName, functorInstanceName,
 * methodRetType,
 * methodPar1Type, methodPar2Type, methodPar3Type, methodPar4Type, methodPar5Type)
 * Following definitions / names are build automatically from the AaFunctionName:
 * Interface Class:    IAaFunctionName
 * Interface Function: utFcnAaFunctionName
 * Interface Mock:     AaFunctionNameMock
 * Return Type:        TAaFunctionNameRet
 * Parameter 1 Type:   TAaFunctionNameP1
 * Parameter 2 Type:   TAaFunctionNameP2
 * Parameter 3 Type:   TAaFunctionNameP3
 * Parameter 4 Type:   TAaFunctionNameP4
 * Parameter 5 Type:   TAaFunctionNameP5
 * Functor Type:       TAaFunctionNameFunctor
 */
#define COMMON_I_CCS_ADAPTOR_P5(                                                         \
    AaFunctionName,                                                                      \
    functorInstanceName, /* NOLINT(nokia-no-macros) */                                   \
    methodRetType,                                                                       \
    methodPar1Type,                                                                      \
    methodPar2Type,                                                                      \
    methodPar3Type,                                                                      \
    methodPar4Type,                                                                      \
    methodPar5Type)                                                                      \
    class I##AaFunctionName                                                              \
    {                                                                                    \
    public:                                                                              \
        virtual ~I##AaFunctionName() = default;                                          \
        virtual methodRetType utFcn##AaFunctionName(                                     \
            methodPar1Type,                                                              \
            methodPar2Type,                                                              \
            methodPar3Type,                                                              \
            methodPar4Type,                                                              \
            methodPar5Type) = 0;                                                         \
    };                                                                                   \
                                                                                         \
    typedef methodRetType T##AaFunctionName##Ret;                                        \
    typedef methodPar1Type T##AaFunctionName##P1;                                        \
    typedef methodPar2Type T##AaFunctionName##P2;                                        \
    typedef methodPar3Type T##AaFunctionName##P3;                                        \
    typedef methodPar4Type T##AaFunctionName##P4;                                        \
    typedef methodPar5Type T##AaFunctionName##P5;                                        \
    typedef std::function<methodRetType(                                                 \
        methodPar1Type, methodPar2Type, methodPar3Type, methodPar4Type, methodPar5Type)> \
        T##AaFunctionName##Functor;                                                      \
    extern T##AaFunctionName##Functor functorInstanceName;                               \
// end Macro COMMON_I_CCS_ADAPTOR_P5

/***/
/**@def COMMON_I_CCS_ADAPTOR_P8
 * Declaration of Interfaces for Ccs-Functions with 8 Parameter.
 * COMMON_I_CCS_ADAPTOR_P8(AaFunctionName, functorInstanceName,
 * methodRetType,
 * methodPar1Type, methodPar2Type, methodPar3Type, methodPar4Type, methodPar5Type,
 * methodPar6Type, methodPar7Type, methodPar8Type)
 * Following definitions / names are build automatically from the AaFunctionName:
 * Interface Class:    IAaFunctionName
 * Interface Function: utFcnAaFunctionName
 * Interface Mock:     AaFunctionNameMock
 * Return Type:        TAaFunctionNameRet
 * Parameter  1 Type:  TAaFunctionNameP1
 * Parameter  2 Type:  TAaFunctionNameP2
 * Parameter  3 Type:  TAaFunctionNameP3
 * Parameter  4 Type:  TAaFunctionNameP4
 * Parameter  5 Type:  TAaFunctionNameP5
 * Parameter  6 Type:  TAaFunctionNameP6
 * Parameter  7 Type:  TAaFunctionNameP7
 * Parameter  8 Type:  TAaFunctionNameP8
 * Functor Type:       TAaFunctionNameFunctor
 */
#define COMMON_I_CCS_ADAPTOR_P8(                           \
    AaFunctionName,                                        \
    functorInstanceName,                                   \
    methodRetType,                                         \
    methodPar1Type,                                        \
    methodPar2Type,                                        \
    methodPar3Type,                                        \
    methodPar4Type,                                        \
    methodPar5Type,                                        \
    methodPar6Type,                                        \
    methodPar7Type,                                        \
    methodPar8Type)                                        \
    class I##AaFunctionName                                \
    {                                                      \
    public:                                                \
        virtual ~I##AaFunctionName() = default;            \
        virtual methodRetType utFcn##AaFunctionName(       \
            methodPar1Type,                                \
            methodPar2Type,                                \
            methodPar3Type,                                \
            methodPar4Type,                                \
            methodPar5Type,                                \
            methodPar6Type,                                \
            methodPar7Type,                                \
            methodPar8Type) = 0;                           \
    };                                                     \
                                                           \
    typedef methodRetType T##AaFunctionName##Ret;          \
    typedef methodPar1Type T##AaFunctionName##P1;          \
    typedef methodPar2Type T##AaFunctionName##P2;          \
    typedef methodPar3Type T##AaFunctionName##P3;          \
    typedef methodPar4Type T##AaFunctionName##P4;          \
    typedef methodPar5Type T##AaFunctionName##P5;          \
    typedef methodPar6Type T##AaFunctionName##P6;          \
    typedef methodPar7Type T##AaFunctionName##P7;          \
    typedef methodPar8Type T##AaFunctionName##P8;          \
    typedef std::function<methodRetType(                   \
        methodPar1Type,                                    \
        methodPar2Type,                                    \
        methodPar3Type,                                    \
        methodPar4Type,                                    \
        methodPar5Type,                                    \
        methodPar6Type,                                    \
        methodPar7Type,                                    \
        methodPar8Type)>                                   \
        T##AaFunctionName##Functor;                        \
    extern T##AaFunctionName##Functor functorInstanceName; \
    // end Macro CCS_ADAPTER_INTERFACE8

/***/
/**@def COMMON_I_CCS_ADAPTOR_P10
 * Declaration of Interfaces for Ccs-Functions with 10 Parameter.
 * COMMON_I_CCS_ADAPTOR_P10(AaFunctionName, functorInstanceName,
 * methodRetType,
 * methodPar1Type, methodPar2Type, methodPar3Type, methodPar4Type, methodPar5Type,
 * methodPar6Type, methodPar7Type, methodPar8Type, methodPar9Type, methodPar10Type)
 * Following definitions / names are build automatically from the AaFunctionName:
 * Interface Class:    IAaFunctionName
 * Interface Function: utFcnAaFunctionName
 * Interface Mock:     AaFunctionNameMock
 * Return Type:        TAaFunctionNameRet
 * Parameter  1 Type:  TAaFunctionNameP1
 * Parameter  2 Type:  TAaFunctionNameP2
 * Parameter  3 Type:  TAaFunctionNameP3
 * Parameter  4 Type:  TAaFunctionNameP4
 * Parameter  5 Type:  TAaFunctionNameP5
 * Parameter  6 Type:  TAaFunctionNameP6
 * Parameter  7 Type:  TAaFunctionNameP7
 * Parameter  8 Type:  TAaFunctionNameP8
 * Parameter  9 Type:  TAaFunctionNameP9
 * Parameter 10 Type:  TAaFunctionNameP10
 * Functor Type:       TAaFunctionNameFunctor
 */
#define COMMON_I_CCS_ADAPTOR_P10(                          \
    AaFunctionName,                                        \
    functorInstanceName,                                   \
    methodRetType,                                         \
    methodPar1Type,                                        \
    methodPar2Type,                                        \
    methodPar3Type,                                        \
    methodPar4Type,                                        \
    methodPar5Type,                                        \
    methodPar6Type,                                        \
    methodPar7Type,                                        \
    methodPar8Type,                                        \
    methodPar9Type,                                        \
    methodPar10Type)                                       \
    class I##AaFunctionName                                \
    {                                                      \
    public:                                                \
        virtual ~I##AaFunctionName() = default;            \
        virtual methodRetType utFcn##AaFunctionName(       \
            methodPar1Type,                                \
            methodPar2Type,                                \
            methodPar3Type,                                \
            methodPar4Type,                                \
            methodPar5Type,                                \
            methodPar6Type,                                \
            methodPar7Type,                                \
            methodPar8Type,                                \
            methodPar9Type,                                \
            methodPar10Type) = 0;                          \
    };                                                     \
                                                           \
    typedef methodRetType T##AaFunctionName##Ret;          \
    typedef methodPar1Type T##AaFunctionName##P1;          \
    typedef methodPar2Type T##AaFunctionName##P2;          \
    typedef methodPar3Type T##AaFunctionName##P3;          \
    typedef methodPar4Type T##AaFunctionName##P4;          \
    typedef methodPar5Type T##AaFunctionName##P5;          \
    typedef methodPar6Type T##AaFunctionName##P6;          \
    typedef methodPar7Type T##AaFunctionName##P7;          \
    typedef methodPar8Type T##AaFunctionName##P8;          \
    typedef methodPar9Type T##AaFunctionName##P9;          \
    typedef methodPar10Type T##AaFunctionName##P10;        \
    typedef std::function<methodRetType(                   \
        methodPar1Type,                                    \
        methodPar2Type,                                    \
        methodPar3Type,                                    \
        methodPar4Type,                                    \
        methodPar5Type,                                    \
        methodPar6Type,                                    \
        methodPar7Type,                                    \
        methodPar8Type,                                    \
        methodPar9Type,                                    \
        methodPar10Type)>                                  \
        T##AaFunctionName##Functor;                        \
    extern T##AaFunctionName##Functor functorInstanceName; \
    // end Macro CCS_ADAPTER_INTERFACE10
