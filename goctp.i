%module(directors="1") goctp

// suppress warning no virtual destructor
#pragma SWIG nowarn=514

%{
#include "./include/ThostFtdcUserApiDataType.h"
#include "./include/ThostFtdcUserApiStruct.h"
#include "./include/ThostFtdcTraderApi.h"
#include "./include/ThostFtdcMdApi.h"
%}

// ignore define to illegal rune literal
%ignore THOST_FTDC_VTC_BankBankToFuture;
%ignore THOST_FTDC_VTC_BankFutureToBank;
%ignore THOST_FTDC_VTC_FutureBankToFuture;
%ignore THOST_FTDC_VTC_FutureFutureToBank;
%ignore THOST_FTDC_FTC_BankLaunchBankToBroker;
%ignore THOST_FTDC_FTC_BrokerLaunchBankToBroker;
%ignore THOST_FTDC_FTC_BankLaunchBrokerToBank;
%ignore THOST_FTDC_FTC_BrokerLaunchBrokerToBank;

%feature("director") CThostFtdcMdSpi;
%feature("director") CThostFtdcTraderSpi;

%include "./include/ThostFtdcUserApiDataType.h"
%include "./include/ThostFtdcUserApiStruct.h"
%include "./include/ThostFtdcTraderApi.h"
%include "./include/ThostFtdcMdApi.h"
