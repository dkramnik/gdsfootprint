
Var
    CurrentLib : IPCB_Library;
{..............................................................................}

{..............................................................................}
Procedure CreateALibComponent;
Var
    NewPCBLibComp : IPCB_LibComponent;
    NewPad        : IPCB_Pad;
    NewTrack      : IPCB_Track;
Begin
    If PCBServer = Nil Then Exit;
    CurrentLib := PcbServer.GetCurrentPCBLibrary;
    If CurrentLib = Nil Then Exit;


    NewPCBLibComp := PCBServer.CreatePCBLibComp;
    NewPcbLibComp.Name := 'test_chip';

    CurrentLib.RegisterComponent(NewPCBLibComp);


    PCBServer.PreProcess;

    NewPad := PcbServer.PCBObjectFactory(ePadObject,eNoDimension,eCreate_Default);
    NewPad.X        := MMsToCoord(0.250000);
    NewPad.Y        := MMsToCoord(0.250000);
    NewPad.TopXSize := MMsToCoord(0.100000);
    NewPad.TopYSize := MMsToCoord(0.100000);
    NewPad.Layer    := eTopLayer;
    NewPad.Name     := 'DVSS';
    NewPad.HoleSize := 0.0;
    NewPCBLibComp.AddPCBObject(NewPad);
    PCBServer.SendMessageToRobots(NewPCBLibComp.I_ObjectAddress,c_Broadcast,PCBM_BoardRegisteration,NewPad.I_ObjectAddress);


    NewPad := PcbServer.PCBObjectFactory(ePadObject,eNoDimension,eCreate_Default);
    NewPad.X        := MMsToCoord(0.250000);
    NewPad.Y        := MMsToCoord(0.500000);
    NewPad.TopXSize := MMsToCoord(0.100000);
    NewPad.TopYSize := MMsToCoord(0.100000);
    NewPad.Layer    := eTopLayer;
    NewPad.Name     := 'DVSS';
    NewPad.HoleSize := 0.0;
    NewPCBLibComp.AddPCBObject(NewPad);
    PCBServer.SendMessageToRobots(NewPCBLibComp.I_ObjectAddress,c_Broadcast,PCBM_BoardRegisteration,NewPad.I_ObjectAddress);


    NewPad := PcbServer.PCBObjectFactory(ePadObject,eNoDimension,eCreate_Default);
    NewPad.X        := MMsToCoord(0.250000);
    NewPad.Y        := MMsToCoord(0.750000);
    NewPad.TopXSize := MMsToCoord(0.100000);
    NewPad.TopYSize := MMsToCoord(0.100000);
    NewPad.Layer    := eTopLayer;
    NewPad.Name     := 'DVSS';
    NewPad.HoleSize := 0.0;
    NewPCBLibComp.AddPCBObject(NewPad);
    PCBServer.SendMessageToRobots(NewPCBLibComp.I_ObjectAddress,c_Broadcast,PCBM_BoardRegisteration,NewPad.I_ObjectAddress);


    NewPad := PcbServer.PCBObjectFactory(ePadObject,eNoDimension,eCreate_Default);
    NewPad.X        := MMsToCoord(0.250000);
    NewPad.Y        := MMsToCoord(1.750000);
    NewPad.TopXSize := MMsToCoord(0.100000);
    NewPad.TopYSize := MMsToCoord(0.100000);
    NewPad.Layer    := eTopLayer;
    NewPad.Name     := 'DVSS';
    NewPad.HoleSize := 0.0;
    NewPCBLibComp.AddPCBObject(NewPad);
    PCBServer.SendMessageToRobots(NewPCBLibComp.I_ObjectAddress,c_Broadcast,PCBM_BoardRegisteration,NewPad.I_ObjectAddress);


    NewPad := PcbServer.PCBObjectFactory(ePadObject,eNoDimension,eCreate_Default);
    NewPad.X        := MMsToCoord(0.250000);
    NewPad.Y        := MMsToCoord(2.000000);
    NewPad.TopXSize := MMsToCoord(0.100000);
    NewPad.TopYSize := MMsToCoord(0.100000);
    NewPad.Layer    := eTopLayer;
    NewPad.Name     := 'DVSS';
    NewPad.HoleSize := 0.0;
    NewPCBLibComp.AddPCBObject(NewPad);
    PCBServer.SendMessageToRobots(NewPCBLibComp.I_ObjectAddress,c_Broadcast,PCBM_BoardRegisteration,NewPad.I_ObjectAddress);


    NewPad := PcbServer.PCBObjectFactory(ePadObject,eNoDimension,eCreate_Default);
    NewPad.X        := MMsToCoord(0.350000);
    NewPad.Y        := MMsToCoord(1.000000);
    NewPad.TopXSize := MMsToCoord(0.100000);
    NewPad.TopYSize := MMsToCoord(0.100000);
    NewPad.Layer    := eTopLayer;
    NewPad.Name     := 'IO0';
    NewPad.HoleSize := 0.0;
    NewPCBLibComp.AddPCBObject(NewPad);
    PCBServer.SendMessageToRobots(NewPCBLibComp.I_ObjectAddress,c_Broadcast,PCBM_BoardRegisteration,NewPad.I_ObjectAddress);


    NewPad := PcbServer.PCBObjectFactory(ePadObject,eNoDimension,eCreate_Default);
    NewPad.X        := MMsToCoord(0.350000);
    NewPad.Y        := MMsToCoord(1.250000);
    NewPad.TopXSize := MMsToCoord(0.100000);
    NewPad.TopYSize := MMsToCoord(0.100000);
    NewPad.Layer    := eTopLayer;
    NewPad.Name     := 'IO5';
    NewPad.HoleSize := 0.0;
    NewPCBLibComp.AddPCBObject(NewPad);
    PCBServer.SendMessageToRobots(NewPCBLibComp.I_ObjectAddress,c_Broadcast,PCBM_BoardRegisteration,NewPad.I_ObjectAddress);


    NewPad := PcbServer.PCBObjectFactory(ePadObject,eNoDimension,eCreate_Default);
    NewPad.X        := MMsToCoord(0.350000);
    NewPad.Y        := MMsToCoord(1.500000);
    NewPad.TopXSize := MMsToCoord(0.100000);
    NewPad.TopYSize := MMsToCoord(0.100000);
    NewPad.Layer    := eTopLayer;
    NewPad.Name     := 'IO10';
    NewPad.HoleSize := 0.0;
    NewPCBLibComp.AddPCBObject(NewPad);
    PCBServer.SendMessageToRobots(NewPCBLibComp.I_ObjectAddress,c_Broadcast,PCBM_BoardRegisteration,NewPad.I_ObjectAddress);


    NewPad := PcbServer.PCBObjectFactory(ePadObject,eNoDimension,eCreate_Default);
    NewPad.X        := MMsToCoord(0.450000);
    NewPad.Y        := MMsToCoord(0.500000);
    NewPad.TopXSize := MMsToCoord(0.100000);
    NewPad.TopYSize := MMsToCoord(0.100000);
    NewPad.Layer    := eTopLayer;
    NewPad.Name     := 'DVDD';
    NewPad.HoleSize := 0.0;
    NewPCBLibComp.AddPCBObject(NewPad);
    PCBServer.SendMessageToRobots(NewPCBLibComp.I_ObjectAddress,c_Broadcast,PCBM_BoardRegisteration,NewPad.I_ObjectAddress);


    NewPad := PcbServer.PCBObjectFactory(ePadObject,eNoDimension,eCreate_Default);
    NewPad.X        := MMsToCoord(0.450000);
    NewPad.Y        := MMsToCoord(0.750000);
    NewPad.TopXSize := MMsToCoord(0.100000);
    NewPad.TopYSize := MMsToCoord(0.100000);
    NewPad.Layer    := eTopLayer;
    NewPad.Name     := 'DVDD';
    NewPad.HoleSize := 0.0;
    NewPCBLibComp.AddPCBObject(NewPad);
    PCBServer.SendMessageToRobots(NewPCBLibComp.I_ObjectAddress,c_Broadcast,PCBM_BoardRegisteration,NewPad.I_ObjectAddress);


    NewPad := PcbServer.PCBObjectFactory(ePadObject,eNoDimension,eCreate_Default);
    NewPad.X        := MMsToCoord(0.450000);
    NewPad.Y        := MMsToCoord(1.750000);
    NewPad.TopXSize := MMsToCoord(0.100000);
    NewPad.TopYSize := MMsToCoord(0.100000);
    NewPad.Layer    := eTopLayer;
    NewPad.Name     := 'DVDD';
    NewPad.HoleSize := 0.0;
    NewPCBLibComp.AddPCBObject(NewPad);
    PCBServer.SendMessageToRobots(NewPCBLibComp.I_ObjectAddress,c_Broadcast,PCBM_BoardRegisteration,NewPad.I_ObjectAddress);


    NewPad := PcbServer.PCBObjectFactory(ePadObject,eNoDimension,eCreate_Default);
    NewPad.X        := MMsToCoord(0.450000);
    NewPad.Y        := MMsToCoord(2.000000);
    NewPad.TopXSize := MMsToCoord(0.100000);
    NewPad.TopYSize := MMsToCoord(0.100000);
    NewPad.Layer    := eTopLayer;
    NewPad.Name     := 'DVDD';
    NewPad.HoleSize := 0.0;
    NewPCBLibComp.AddPCBObject(NewPad);
    PCBServer.SendMessageToRobots(NewPCBLibComp.I_ObjectAddress,c_Broadcast,PCBM_BoardRegisteration,NewPad.I_ObjectAddress);


    NewPad := PcbServer.PCBObjectFactory(ePadObject,eNoDimension,eCreate_Default);
    NewPad.X        := MMsToCoord(0.550000);
    NewPad.Y        := MMsToCoord(1.000000);
    NewPad.TopXSize := MMsToCoord(0.100000);
    NewPad.TopYSize := MMsToCoord(0.100000);
    NewPad.Layer    := eTopLayer;
    NewPad.Name     := 'IO1';
    NewPad.HoleSize := 0.0;
    NewPCBLibComp.AddPCBObject(NewPad);
    PCBServer.SendMessageToRobots(NewPCBLibComp.I_ObjectAddress,c_Broadcast,PCBM_BoardRegisteration,NewPad.I_ObjectAddress);


    NewPad := PcbServer.PCBObjectFactory(ePadObject,eNoDimension,eCreate_Default);
    NewPad.X        := MMsToCoord(0.550000);
    NewPad.Y        := MMsToCoord(1.250000);
    NewPad.TopXSize := MMsToCoord(0.100000);
    NewPad.TopYSize := MMsToCoord(0.100000);
    NewPad.Layer    := eTopLayer;
    NewPad.Name     := 'IO6';
    NewPad.HoleSize := 0.0;
    NewPCBLibComp.AddPCBObject(NewPad);
    PCBServer.SendMessageToRobots(NewPCBLibComp.I_ObjectAddress,c_Broadcast,PCBM_BoardRegisteration,NewPad.I_ObjectAddress);


    NewPad := PcbServer.PCBObjectFactory(ePadObject,eNoDimension,eCreate_Default);
    NewPad.X        := MMsToCoord(0.550000);
    NewPad.Y        := MMsToCoord(1.500000);
    NewPad.TopXSize := MMsToCoord(0.100000);
    NewPad.TopYSize := MMsToCoord(0.100000);
    NewPad.Layer    := eTopLayer;
    NewPad.Name     := 'IO11';
    NewPad.HoleSize := 0.0;
    NewPCBLibComp.AddPCBObject(NewPad);
    PCBServer.SendMessageToRobots(NewPCBLibComp.I_ObjectAddress,c_Broadcast,PCBM_BoardRegisteration,NewPad.I_ObjectAddress);


    NewPad := PcbServer.PCBObjectFactory(ePadObject,eNoDimension,eCreate_Default);
    NewPad.X        := MMsToCoord(0.650000);
    NewPad.Y        := MMsToCoord(0.250000);
    NewPad.TopXSize := MMsToCoord(0.100000);
    NewPad.TopYSize := MMsToCoord(0.100000);
    NewPad.Layer    := eTopLayer;
    NewPad.Name     := 'DVSS';
    NewPad.HoleSize := 0.0;
    NewPCBLibComp.AddPCBObject(NewPad);
    PCBServer.SendMessageToRobots(NewPCBLibComp.I_ObjectAddress,c_Broadcast,PCBM_BoardRegisteration,NewPad.I_ObjectAddress);


    NewPad := PcbServer.PCBObjectFactory(ePadObject,eNoDimension,eCreate_Default);
    NewPad.X        := MMsToCoord(0.650000);
    NewPad.Y        := MMsToCoord(0.500000);
    NewPad.TopXSize := MMsToCoord(0.100000);
    NewPad.TopYSize := MMsToCoord(0.100000);
    NewPad.Layer    := eTopLayer;
    NewPad.Name     := 'DVSS';
    NewPad.HoleSize := 0.0;
    NewPCBLibComp.AddPCBObject(NewPad);
    PCBServer.SendMessageToRobots(NewPCBLibComp.I_ObjectAddress,c_Broadcast,PCBM_BoardRegisteration,NewPad.I_ObjectAddress);


    NewPad := PcbServer.PCBObjectFactory(ePadObject,eNoDimension,eCreate_Default);
    NewPad.X        := MMsToCoord(0.650000);
    NewPad.Y        := MMsToCoord(0.750000);
    NewPad.TopXSize := MMsToCoord(0.100000);
    NewPad.TopYSize := MMsToCoord(0.100000);
    NewPad.Layer    := eTopLayer;
    NewPad.Name     := 'DVDD';
    NewPad.HoleSize := 0.0;
    NewPCBLibComp.AddPCBObject(NewPad);
    PCBServer.SendMessageToRobots(NewPCBLibComp.I_ObjectAddress,c_Broadcast,PCBM_BoardRegisteration,NewPad.I_ObjectAddress);


    NewPad := PcbServer.PCBObjectFactory(ePadObject,eNoDimension,eCreate_Default);
    NewPad.X        := MMsToCoord(0.650000);
    NewPad.Y        := MMsToCoord(1.750000);
    NewPad.TopXSize := MMsToCoord(0.100000);
    NewPad.TopYSize := MMsToCoord(0.100000);
    NewPad.Layer    := eTopLayer;
    NewPad.Name     := 'DVSS';
    NewPad.HoleSize := 0.0;
    NewPCBLibComp.AddPCBObject(NewPad);
    PCBServer.SendMessageToRobots(NewPCBLibComp.I_ObjectAddress,c_Broadcast,PCBM_BoardRegisteration,NewPad.I_ObjectAddress);


    NewPad := PcbServer.PCBObjectFactory(ePadObject,eNoDimension,eCreate_Default);
    NewPad.X        := MMsToCoord(0.650000);
    NewPad.Y        := MMsToCoord(2.000000);
    NewPad.TopXSize := MMsToCoord(0.100000);
    NewPad.TopYSize := MMsToCoord(0.100000);
    NewPad.Layer    := eTopLayer;
    NewPad.Name     := 'DVSS';
    NewPad.HoleSize := 0.0;
    NewPCBLibComp.AddPCBObject(NewPad);
    PCBServer.SendMessageToRobots(NewPCBLibComp.I_ObjectAddress,c_Broadcast,PCBM_BoardRegisteration,NewPad.I_ObjectAddress);


    NewPad := PcbServer.PCBObjectFactory(ePadObject,eNoDimension,eCreate_Default);
    NewPad.X        := MMsToCoord(0.750000);
    NewPad.Y        := MMsToCoord(1.000000);
    NewPad.TopXSize := MMsToCoord(0.100000);
    NewPad.TopYSize := MMsToCoord(0.100000);
    NewPad.Layer    := eTopLayer;
    NewPad.Name     := 'IO2';
    NewPad.HoleSize := 0.0;
    NewPCBLibComp.AddPCBObject(NewPad);
    PCBServer.SendMessageToRobots(NewPCBLibComp.I_ObjectAddress,c_Broadcast,PCBM_BoardRegisteration,NewPad.I_ObjectAddress);


    NewPad := PcbServer.PCBObjectFactory(ePadObject,eNoDimension,eCreate_Default);
    NewPad.X        := MMsToCoord(0.750000);
    NewPad.Y        := MMsToCoord(1.250000);
    NewPad.TopXSize := MMsToCoord(0.100000);
    NewPad.TopYSize := MMsToCoord(0.100000);
    NewPad.Layer    := eTopLayer;
    NewPad.Name     := 'IO7';
    NewPad.HoleSize := 0.0;
    NewPCBLibComp.AddPCBObject(NewPad);
    PCBServer.SendMessageToRobots(NewPCBLibComp.I_ObjectAddress,c_Broadcast,PCBM_BoardRegisteration,NewPad.I_ObjectAddress);


    NewPad := PcbServer.PCBObjectFactory(ePadObject,eNoDimension,eCreate_Default);
    NewPad.X        := MMsToCoord(0.750000);
    NewPad.Y        := MMsToCoord(1.500000);
    NewPad.TopXSize := MMsToCoord(0.100000);
    NewPad.TopYSize := MMsToCoord(0.100000);
    NewPad.Layer    := eTopLayer;
    NewPad.Name     := 'IO12';
    NewPad.HoleSize := 0.0;
    NewPCBLibComp.AddPCBObject(NewPad);
    PCBServer.SendMessageToRobots(NewPCBLibComp.I_ObjectAddress,c_Broadcast,PCBM_BoardRegisteration,NewPad.I_ObjectAddress);


    NewPad := PcbServer.PCBObjectFactory(ePadObject,eNoDimension,eCreate_Default);
    NewPad.X        := MMsToCoord(0.850000);
    NewPad.Y        := MMsToCoord(0.500000);
    NewPad.TopXSize := MMsToCoord(0.100000);
    NewPad.TopYSize := MMsToCoord(0.100000);
    NewPad.Layer    := eTopLayer;
    NewPad.Name     := 'DVDD';
    NewPad.HoleSize := 0.0;
    NewPCBLibComp.AddPCBObject(NewPad);
    PCBServer.SendMessageToRobots(NewPCBLibComp.I_ObjectAddress,c_Broadcast,PCBM_BoardRegisteration,NewPad.I_ObjectAddress);


    NewPad := PcbServer.PCBObjectFactory(ePadObject,eNoDimension,eCreate_Default);
    NewPad.X        := MMsToCoord(0.850000);
    NewPad.Y        := MMsToCoord(0.750000);
    NewPad.TopXSize := MMsToCoord(0.100000);
    NewPad.TopYSize := MMsToCoord(0.100000);
    NewPad.Layer    := eTopLayer;
    NewPad.Name     := 'DVDD';
    NewPad.HoleSize := 0.0;
    NewPCBLibComp.AddPCBObject(NewPad);
    PCBServer.SendMessageToRobots(NewPCBLibComp.I_ObjectAddress,c_Broadcast,PCBM_BoardRegisteration,NewPad.I_ObjectAddress);


    NewPad := PcbServer.PCBObjectFactory(ePadObject,eNoDimension,eCreate_Default);
    NewPad.X        := MMsToCoord(0.850000);
    NewPad.Y        := MMsToCoord(1.750000);
    NewPad.TopXSize := MMsToCoord(0.100000);
    NewPad.TopYSize := MMsToCoord(0.100000);
    NewPad.Layer    := eTopLayer;
    NewPad.Name     := 'DVDD';
    NewPad.HoleSize := 0.0;
    NewPCBLibComp.AddPCBObject(NewPad);
    PCBServer.SendMessageToRobots(NewPCBLibComp.I_ObjectAddress,c_Broadcast,PCBM_BoardRegisteration,NewPad.I_ObjectAddress);


    NewPad := PcbServer.PCBObjectFactory(ePadObject,eNoDimension,eCreate_Default);
    NewPad.X        := MMsToCoord(0.850000);
    NewPad.Y        := MMsToCoord(2.000000);
    NewPad.TopXSize := MMsToCoord(0.100000);
    NewPad.TopYSize := MMsToCoord(0.100000);
    NewPad.Layer    := eTopLayer;
    NewPad.Name     := 'DVDD';
    NewPad.HoleSize := 0.0;
    NewPCBLibComp.AddPCBObject(NewPad);
    PCBServer.SendMessageToRobots(NewPCBLibComp.I_ObjectAddress,c_Broadcast,PCBM_BoardRegisteration,NewPad.I_ObjectAddress);


    NewPad := PcbServer.PCBObjectFactory(ePadObject,eNoDimension,eCreate_Default);
    NewPad.X        := MMsToCoord(0.950000);
    NewPad.Y        := MMsToCoord(1.000000);
    NewPad.TopXSize := MMsToCoord(0.100000);
    NewPad.TopYSize := MMsToCoord(0.100000);
    NewPad.Layer    := eTopLayer;
    NewPad.Name     := 'IO3';
    NewPad.HoleSize := 0.0;
    NewPCBLibComp.AddPCBObject(NewPad);
    PCBServer.SendMessageToRobots(NewPCBLibComp.I_ObjectAddress,c_Broadcast,PCBM_BoardRegisteration,NewPad.I_ObjectAddress);


    NewPad := PcbServer.PCBObjectFactory(ePadObject,eNoDimension,eCreate_Default);
    NewPad.X        := MMsToCoord(0.950000);
    NewPad.Y        := MMsToCoord(1.250000);
    NewPad.TopXSize := MMsToCoord(0.100000);
    NewPad.TopYSize := MMsToCoord(0.100000);
    NewPad.Layer    := eTopLayer;
    NewPad.Name     := 'IO8';
    NewPad.HoleSize := 0.0;
    NewPCBLibComp.AddPCBObject(NewPad);
    PCBServer.SendMessageToRobots(NewPCBLibComp.I_ObjectAddress,c_Broadcast,PCBM_BoardRegisteration,NewPad.I_ObjectAddress);


    NewPad := PcbServer.PCBObjectFactory(ePadObject,eNoDimension,eCreate_Default);
    NewPad.X        := MMsToCoord(0.950000);
    NewPad.Y        := MMsToCoord(1.500000);
    NewPad.TopXSize := MMsToCoord(0.100000);
    NewPad.TopYSize := MMsToCoord(0.100000);
    NewPad.Layer    := eTopLayer;
    NewPad.Name     := 'IO13';
    NewPad.HoleSize := 0.0;
    NewPCBLibComp.AddPCBObject(NewPad);
    PCBServer.SendMessageToRobots(NewPCBLibComp.I_ObjectAddress,c_Broadcast,PCBM_BoardRegisteration,NewPad.I_ObjectAddress);


    NewPad := PcbServer.PCBObjectFactory(ePadObject,eNoDimension,eCreate_Default);
    NewPad.X        := MMsToCoord(1.050000);
    NewPad.Y        := MMsToCoord(0.250000);
    NewPad.TopXSize := MMsToCoord(0.100000);
    NewPad.TopYSize := MMsToCoord(0.100000);
    NewPad.Layer    := eTopLayer;
    NewPad.Name     := 'DVSS';
    NewPad.HoleSize := 0.0;
    NewPCBLibComp.AddPCBObject(NewPad);
    PCBServer.SendMessageToRobots(NewPCBLibComp.I_ObjectAddress,c_Broadcast,PCBM_BoardRegisteration,NewPad.I_ObjectAddress);


    NewPad := PcbServer.PCBObjectFactory(ePadObject,eNoDimension,eCreate_Default);
    NewPad.X        := MMsToCoord(1.050000);
    NewPad.Y        := MMsToCoord(0.500000);
    NewPad.TopXSize := MMsToCoord(0.100000);
    NewPad.TopYSize := MMsToCoord(0.100000);
    NewPad.Layer    := eTopLayer;
    NewPad.Name     := 'DVSS';
    NewPad.HoleSize := 0.0;
    NewPCBLibComp.AddPCBObject(NewPad);
    PCBServer.SendMessageToRobots(NewPCBLibComp.I_ObjectAddress,c_Broadcast,PCBM_BoardRegisteration,NewPad.I_ObjectAddress);


    NewPad := PcbServer.PCBObjectFactory(ePadObject,eNoDimension,eCreate_Default);
    NewPad.X        := MMsToCoord(1.050000);
    NewPad.Y        := MMsToCoord(1.750000);
    NewPad.TopXSize := MMsToCoord(0.100000);
    NewPad.TopYSize := MMsToCoord(0.100000);
    NewPad.Layer    := eTopLayer;
    NewPad.Name     := 'DVSS';
    NewPad.HoleSize := 0.0;
    NewPCBLibComp.AddPCBObject(NewPad);
    PCBServer.SendMessageToRobots(NewPCBLibComp.I_ObjectAddress,c_Broadcast,PCBM_BoardRegisteration,NewPad.I_ObjectAddress);


    NewPad := PcbServer.PCBObjectFactory(ePadObject,eNoDimension,eCreate_Default);
    NewPad.X        := MMsToCoord(1.050000);
    NewPad.Y        := MMsToCoord(2.000000);
    NewPad.TopXSize := MMsToCoord(0.100000);
    NewPad.TopYSize := MMsToCoord(0.100000);
    NewPad.Layer    := eTopLayer;
    NewPad.Name     := 'DVSS';
    NewPad.HoleSize := 0.0;
    NewPCBLibComp.AddPCBObject(NewPad);
    PCBServer.SendMessageToRobots(NewPCBLibComp.I_ObjectAddress,c_Broadcast,PCBM_BoardRegisteration,NewPad.I_ObjectAddress);


    NewPad := PcbServer.PCBObjectFactory(ePadObject,eNoDimension,eCreate_Default);
    NewPad.X        := MMsToCoord(1.150000);
    NewPad.Y        := MMsToCoord(1.000000);
    NewPad.TopXSize := MMsToCoord(0.100000);
    NewPad.TopYSize := MMsToCoord(0.100000);
    NewPad.Layer    := eTopLayer;
    NewPad.Name     := 'IO4';
    NewPad.HoleSize := 0.0;
    NewPCBLibComp.AddPCBObject(NewPad);
    PCBServer.SendMessageToRobots(NewPCBLibComp.I_ObjectAddress,c_Broadcast,PCBM_BoardRegisteration,NewPad.I_ObjectAddress);


    NewPad := PcbServer.PCBObjectFactory(ePadObject,eNoDimension,eCreate_Default);
    NewPad.X        := MMsToCoord(1.150000);
    NewPad.Y        := MMsToCoord(1.250000);
    NewPad.TopXSize := MMsToCoord(0.100000);
    NewPad.TopYSize := MMsToCoord(0.100000);
    NewPad.Layer    := eTopLayer;
    NewPad.Name     := 'IO9';
    NewPad.HoleSize := 0.0;
    NewPCBLibComp.AddPCBObject(NewPad);
    PCBServer.SendMessageToRobots(NewPCBLibComp.I_ObjectAddress,c_Broadcast,PCBM_BoardRegisteration,NewPad.I_ObjectAddress);


    NewPad := PcbServer.PCBObjectFactory(ePadObject,eNoDimension,eCreate_Default);
    NewPad.X        := MMsToCoord(1.150000);
    NewPad.Y        := MMsToCoord(1.500000);
    NewPad.TopXSize := MMsToCoord(0.100000);
    NewPad.TopYSize := MMsToCoord(0.100000);
    NewPad.Layer    := eTopLayer;
    NewPad.Name     := 'IO14';
    NewPad.HoleSize := 0.0;
    NewPCBLibComp.AddPCBObject(NewPad);
    PCBServer.SendMessageToRobots(NewPCBLibComp.I_ObjectAddress,c_Broadcast,PCBM_BoardRegisteration,NewPad.I_ObjectAddress);


    NewPad := PcbServer.PCBObjectFactory(ePadObject,eNoDimension,eCreate_Default);
    NewPad.X        := MMsToCoord(1.250000);
    NewPad.Y        := MMsToCoord(0.500000);
    NewPad.TopXSize := MMsToCoord(0.100000);
    NewPad.TopYSize := MMsToCoord(0.100000);
    NewPad.Layer    := eTopLayer;
    NewPad.Name     := 'DVDD';
    NewPad.HoleSize := 0.0;
    NewPCBLibComp.AddPCBObject(NewPad);
    PCBServer.SendMessageToRobots(NewPCBLibComp.I_ObjectAddress,c_Broadcast,PCBM_BoardRegisteration,NewPad.I_ObjectAddress);


    NewPad := PcbServer.PCBObjectFactory(ePadObject,eNoDimension,eCreate_Default);
    NewPad.X        := MMsToCoord(1.250000);
    NewPad.Y        := MMsToCoord(0.750000);
    NewPad.TopXSize := MMsToCoord(0.100000);
    NewPad.TopYSize := MMsToCoord(0.100000);
    NewPad.Layer    := eTopLayer;
    NewPad.Name     := 'DVDD';
    NewPad.HoleSize := 0.0;
    NewPCBLibComp.AddPCBObject(NewPad);
    PCBServer.SendMessageToRobots(NewPCBLibComp.I_ObjectAddress,c_Broadcast,PCBM_BoardRegisteration,NewPad.I_ObjectAddress);


    NewPad := PcbServer.PCBObjectFactory(ePadObject,eNoDimension,eCreate_Default);
    NewPad.X        := MMsToCoord(1.250000);
    NewPad.Y        := MMsToCoord(1.750000);
    NewPad.TopXSize := MMsToCoord(0.100000);
    NewPad.TopYSize := MMsToCoord(0.100000);
    NewPad.Layer    := eTopLayer;
    NewPad.Name     := 'DVDD';
    NewPad.HoleSize := 0.0;
    NewPCBLibComp.AddPCBObject(NewPad);
    PCBServer.SendMessageToRobots(NewPCBLibComp.I_ObjectAddress,c_Broadcast,PCBM_BoardRegisteration,NewPad.I_ObjectAddress);


    NewPad := PcbServer.PCBObjectFactory(ePadObject,eNoDimension,eCreate_Default);
    NewPad.X        := MMsToCoord(1.250000);
    NewPad.Y        := MMsToCoord(2.000000);
    NewPad.TopXSize := MMsToCoord(0.100000);
    NewPad.TopYSize := MMsToCoord(0.100000);
    NewPad.Layer    := eTopLayer;
    NewPad.Name     := 'DVDD';
    NewPad.HoleSize := 0.0;
    NewPCBLibComp.AddPCBObject(NewPad);
    PCBServer.SendMessageToRobots(NewPCBLibComp.I_ObjectAddress,c_Broadcast,PCBM_BoardRegisteration,NewPad.I_ObjectAddress);



    PCBServer.SendMessageToRobots(CurrentLib.Board.I_ObjectAddress,c_Broadcast,PCBM_BoardRegisteration,NewPCBLibComp.I_ObjectAddress);
    PCBServer.PostProcess;

    CurrentLib.CurrentComponent := NewPcbLibComp;
    CurrentLib.Board.ViewManager_FullUpdate;
End;
{..............................................................................}

{..............................................................................}
End.
