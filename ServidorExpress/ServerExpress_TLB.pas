unit ServerExpress_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// PASTLWTR : 1.2
// File generated on 29/08/2021 3:06:34 p. m. from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Users\Unimayor Virtual\Desktop\ServidorExpress\ServerExpress.tlb (1)
// LIBID: {59260A8D-A56E-41D8-ACCA-52827A4EF34B}
// LCID: 0
// Helpfile: 
// HelpString: ServerExpress Library
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
//   (2) v1.0 Midas, (C:\WINDOWS\SysWOW64\midas.dll)
//   (3) v4.0 StdVCL, (C:\WINDOWS\SysWOW64\stdvcl40.dll)
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses Windows, ActiveX, Classes, Graphics, Midas, StdVCL, Variants;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  ServerExpressMajorVersion = 1;
  ServerExpressMinorVersion = 0;

  LIBID_ServerExpress: TGUID = '{59260A8D-A56E-41D8-ACCA-52827A4EF34B}';

  IID_IServerExpressDCOM: TGUID = '{6AB675B6-E961-47F9-9251-7C03803D654F}';
  CLASS_ServerExpressDCOM: TGUID = '{5F6097AF-3175-40F1-9765-8239460E5D60}';
type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  IServerExpressDCOM = interface;
  IServerExpressDCOMDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  ServerExpressDCOM = IServerExpressDCOM;


// *********************************************************************//
// Interface: IServerExpressDCOM
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6AB675B6-E961-47F9-9251-7C03803D654F}
// *********************************************************************//
  IServerExpressDCOM = interface(IAppServer)
    ['{6AB675B6-E961-47F9-9251-7C03803D654F}']
  end;

// *********************************************************************//
// DispIntf:  IServerExpressDCOMDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6AB675B6-E961-47F9-9251-7C03803D654F}
// *********************************************************************//
  IServerExpressDCOMDisp = dispinterface
    ['{6AB675B6-E961-47F9-9251-7C03803D654F}']
    function AS_ApplyUpdates(const ProviderName: WideString; Delta: OleVariant; MaxErrors: Integer; 
                             out ErrorCount: Integer; var OwnerData: OleVariant): OleVariant; dispid 20000000;
    function AS_GetRecords(const ProviderName: WideString; Count: Integer; out RecsOut: Integer; 
                           Options: Integer; const CommandText: WideString; var Params: OleVariant; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000001;
    function AS_DataRequest(const ProviderName: WideString; Data: OleVariant): OleVariant; dispid 20000002;
    function AS_GetProviderNames: OleVariant; dispid 20000003;
    function AS_GetParams(const ProviderName: WideString; var OwnerData: OleVariant): OleVariant; dispid 20000004;
    function AS_RowRequest(const ProviderName: WideString; Row: OleVariant; RequestType: Integer; 
                           var OwnerData: OleVariant): OleVariant; dispid 20000005;
    procedure AS_Execute(const ProviderName: WideString; const CommandText: WideString; 
                         var Params: OleVariant; var OwnerData: OleVariant); dispid 20000006;
  end;

// *********************************************************************//
// The Class CoServerExpressDCOM provides a Create and CreateRemote method to          
// create instances of the default interface IServerExpressDCOM exposed by              
// the CoClass ServerExpressDCOM. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoServerExpressDCOM = class
    class function Create: IServerExpressDCOM;
    class function CreateRemote(const MachineName: string): IServerExpressDCOM;
  end;

implementation

uses ComObj;

class function CoServerExpressDCOM.Create: IServerExpressDCOM;
begin
  Result := CreateComObject(CLASS_ServerExpressDCOM) as IServerExpressDCOM;
end;

class function CoServerExpressDCOM.CreateRemote(const MachineName: string): IServerExpressDCOM;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ServerExpressDCOM) as IServerExpressDCOM;
end;

end.
