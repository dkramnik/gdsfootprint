
Procedure CreateALibComponent;
Var
    CurrentLib   : ISch_Lib;
    SchComponent : ISch_Component;
    R            : ISch_Rectangle;
    P1           : ISch_Pin;
Begin
    If SchServer = Nil Then Exit;
    CurrentLib := SchServer.GetCurrentSchDocument;
    If CurrentLib = Nil Then Exit;

    // Check if the document is a Schematic Libary document first
    If CurrentLib.ObjectID <> eSchLib Then
    Begin
         ShowError('Please open schematic library.');
         Exit;
    End;

    // Create a library component (a page of the library is created).
    SchComponent := SchServer.SchObjectFactory(eSchComponent, eCreate_Default);
    If SchComponent = Nil Then Exit;


    // Set up parameters for the library component.
    SchComponent.CurrentPartID := 1;
    SchComponent.DisplayMode   := 0;

    // Define the LibReference and add the component to the library.
    SchComponent.LibReference := 'test_chip';

    // Create Pin object
    P1 := SchServer.SchObjectFactory(ePin, eCreate_Default);
    If P1 = Nil Then Exit;

    // Define the pin parameters.
    P1.Location             := Point(MilsToCoord(3000), MilsToCoord(100));
    P1.Color                := $000000;
    P1.Orientation          := eRotate180;
    P1.Designator           := 'DVDD';
    P1.Name                 := 'DVDD';
    P1.OwnerPartId          := CurrentLib.CurrentSchComponent.CurrentPartID;
    P1.OwnerPartDisplayMode := CurrentLib.CurrentSchComponent.DisplayMode;

    SchComponent.AddSchObject(P1);

    // Create Pin object
    P1 := SchServer.SchObjectFactory(ePin, eCreate_Default);
    If P1 = Nil Then Exit;

    // Define the pin parameters.
    P1.Location             := Point(MilsToCoord(3000), MilsToCoord(200));
    P1.Color                := $000000;
    P1.Orientation          := eRotate180;
    P1.Designator           := 'DVDD';
    P1.Name                 := 'DVDD';
    P1.OwnerPartId          := CurrentLib.CurrentSchComponent.CurrentPartID;
    P1.OwnerPartDisplayMode := CurrentLib.CurrentSchComponent.DisplayMode;

    SchComponent.AddSchObject(P1);

    // Create Pin object
    P1 := SchServer.SchObjectFactory(ePin, eCreate_Default);
    If P1 = Nil Then Exit;

    // Define the pin parameters.
    P1.Location             := Point(MilsToCoord(3000), MilsToCoord(300));
    P1.Color                := $000000;
    P1.Orientation          := eRotate180;
    P1.Designator           := 'DVDD';
    P1.Name                 := 'DVDD';
    P1.OwnerPartId          := CurrentLib.CurrentSchComponent.CurrentPartID;
    P1.OwnerPartDisplayMode := CurrentLib.CurrentSchComponent.DisplayMode;

    SchComponent.AddSchObject(P1);

    // Create Pin object
    P1 := SchServer.SchObjectFactory(ePin, eCreate_Default);
    If P1 = Nil Then Exit;

    // Define the pin parameters.
    P1.Location             := Point(MilsToCoord(3000), MilsToCoord(400));
    P1.Color                := $000000;
    P1.Orientation          := eRotate180;
    P1.Designator           := 'DVDD';
    P1.Name                 := 'DVDD';
    P1.OwnerPartId          := CurrentLib.CurrentSchComponent.CurrentPartID;
    P1.OwnerPartDisplayMode := CurrentLib.CurrentSchComponent.DisplayMode;

    SchComponent.AddSchObject(P1);

    // Create Pin object
    P1 := SchServer.SchObjectFactory(ePin, eCreate_Default);
    If P1 = Nil Then Exit;

    // Define the pin parameters.
    P1.Location             := Point(MilsToCoord(3000), MilsToCoord(500));
    P1.Color                := $000000;
    P1.Orientation          := eRotate180;
    P1.Designator           := 'DVDD';
    P1.Name                 := 'DVDD';
    P1.OwnerPartId          := CurrentLib.CurrentSchComponent.CurrentPartID;
    P1.OwnerPartDisplayMode := CurrentLib.CurrentSchComponent.DisplayMode;

    SchComponent.AddSchObject(P1);

    // Create Pin object
    P1 := SchServer.SchObjectFactory(ePin, eCreate_Default);
    If P1 = Nil Then Exit;

    // Define the pin parameters.
    P1.Location             := Point(MilsToCoord(3000), MilsToCoord(600));
    P1.Color                := $000000;
    P1.Orientation          := eRotate180;
    P1.Designator           := 'DVDD';
    P1.Name                 := 'DVDD';
    P1.OwnerPartId          := CurrentLib.CurrentSchComponent.CurrentPartID;
    P1.OwnerPartDisplayMode := CurrentLib.CurrentSchComponent.DisplayMode;

    SchComponent.AddSchObject(P1);

    // Create Pin object
    P1 := SchServer.SchObjectFactory(ePin, eCreate_Default);
    If P1 = Nil Then Exit;

    // Define the pin parameters.
    P1.Location             := Point(MilsToCoord(3000), MilsToCoord(700));
    P1.Color                := $000000;
    P1.Orientation          := eRotate180;
    P1.Designator           := 'DVDD';
    P1.Name                 := 'DVDD';
    P1.OwnerPartId          := CurrentLib.CurrentSchComponent.CurrentPartID;
    P1.OwnerPartDisplayMode := CurrentLib.CurrentSchComponent.DisplayMode;

    SchComponent.AddSchObject(P1);

    // Create Pin object
    P1 := SchServer.SchObjectFactory(ePin, eCreate_Default);
    If P1 = Nil Then Exit;

    // Define the pin parameters.
    P1.Location             := Point(MilsToCoord(3000), MilsToCoord(800));
    P1.Color                := $000000;
    P1.Orientation          := eRotate180;
    P1.Designator           := 'DVDD';
    P1.Name                 := 'DVDD';
    P1.OwnerPartId          := CurrentLib.CurrentSchComponent.CurrentPartID;
    P1.OwnerPartDisplayMode := CurrentLib.CurrentSchComponent.DisplayMode;

    SchComponent.AddSchObject(P1);

    // Create Pin object
    P1 := SchServer.SchObjectFactory(ePin, eCreate_Default);
    If P1 = Nil Then Exit;

    // Define the pin parameters.
    P1.Location             := Point(MilsToCoord(3000), MilsToCoord(900));
    P1.Color                := $000000;
    P1.Orientation          := eRotate180;
    P1.Designator           := 'DVDD';
    P1.Name                 := 'DVDD';
    P1.OwnerPartId          := CurrentLib.CurrentSchComponent.CurrentPartID;
    P1.OwnerPartDisplayMode := CurrentLib.CurrentSchComponent.DisplayMode;

    SchComponent.AddSchObject(P1);

    // Create Pin object
    P1 := SchServer.SchObjectFactory(ePin, eCreate_Default);
    If P1 = Nil Then Exit;

    // Define the pin parameters.
    P1.Location             := Point(MilsToCoord(3000), MilsToCoord(1000));
    P1.Color                := $000000;
    P1.Orientation          := eRotate180;
    P1.Designator           := 'DVDD';
    P1.Name                 := 'DVDD';
    P1.OwnerPartId          := CurrentLib.CurrentSchComponent.CurrentPartID;
    P1.OwnerPartDisplayMode := CurrentLib.CurrentSchComponent.DisplayMode;

    SchComponent.AddSchObject(P1);

    // Create Pin object
    P1 := SchServer.SchObjectFactory(ePin, eCreate_Default);
    If P1 = Nil Then Exit;

    // Define the pin parameters.
    P1.Location             := Point(MilsToCoord(3000), MilsToCoord(1100));
    P1.Color                := $000000;
    P1.Orientation          := eRotate180;
    P1.Designator           := 'DVDD';
    P1.Name                 := 'DVDD';
    P1.OwnerPartId          := CurrentLib.CurrentSchComponent.CurrentPartID;
    P1.OwnerPartDisplayMode := CurrentLib.CurrentSchComponent.DisplayMode;

    SchComponent.AddSchObject(P1);

    // Create Pin object
    P1 := SchServer.SchObjectFactory(ePin, eCreate_Default);
    If P1 = Nil Then Exit;

    // Define the pin parameters.
    P1.Location             := Point(MilsToCoord(3000), MilsToCoord(1200));
    P1.Color                := $000000;
    P1.Orientation          := eRotate180;
    P1.Designator           := 'DVDD';
    P1.Name                 := 'DVDD';
    P1.OwnerPartId          := CurrentLib.CurrentSchComponent.CurrentPartID;
    P1.OwnerPartDisplayMode := CurrentLib.CurrentSchComponent.DisplayMode;

    SchComponent.AddSchObject(P1);

    // Create Pin object
    P1 := SchServer.SchObjectFactory(ePin, eCreate_Default);
    If P1 = Nil Then Exit;

    // Define the pin parameters.
    P1.Location             := Point(MilsToCoord(3000), MilsToCoord(1300));
    P1.Color                := $000000;
    P1.Orientation          := eRotate180;
    P1.Designator           := 'DVDD';
    P1.Name                 := 'DVDD';
    P1.OwnerPartId          := CurrentLib.CurrentSchComponent.CurrentPartID;
    P1.OwnerPartDisplayMode := CurrentLib.CurrentSchComponent.DisplayMode;

    SchComponent.AddSchObject(P1);

    // Create Pin object
    P1 := SchServer.SchObjectFactory(ePin, eCreate_Default);
    If P1 = Nil Then Exit;

    // Define the pin parameters.
    P1.Location             := Point(MilsToCoord(6000), MilsToCoord(100));
    P1.Color                := $000000;
    P1.Orientation          := eRotate180;
    P1.Designator           := 'DVSS';
    P1.Name                 := 'DVSS';
    P1.OwnerPartId          := CurrentLib.CurrentSchComponent.CurrentPartID;
    P1.OwnerPartDisplayMode := CurrentLib.CurrentSchComponent.DisplayMode;

    SchComponent.AddSchObject(P1);

    // Create Pin object
    P1 := SchServer.SchObjectFactory(ePin, eCreate_Default);
    If P1 = Nil Then Exit;

    // Define the pin parameters.
    P1.Location             := Point(MilsToCoord(6000), MilsToCoord(200));
    P1.Color                := $000000;
    P1.Orientation          := eRotate180;
    P1.Designator           := 'DVSS';
    P1.Name                 := 'DVSS';
    P1.OwnerPartId          := CurrentLib.CurrentSchComponent.CurrentPartID;
    P1.OwnerPartDisplayMode := CurrentLib.CurrentSchComponent.DisplayMode;

    SchComponent.AddSchObject(P1);

    // Create Pin object
    P1 := SchServer.SchObjectFactory(ePin, eCreate_Default);
    If P1 = Nil Then Exit;

    // Define the pin parameters.
    P1.Location             := Point(MilsToCoord(6000), MilsToCoord(300));
    P1.Color                := $000000;
    P1.Orientation          := eRotate180;
    P1.Designator           := 'DVSS';
    P1.Name                 := 'DVSS';
    P1.OwnerPartId          := CurrentLib.CurrentSchComponent.CurrentPartID;
    P1.OwnerPartDisplayMode := CurrentLib.CurrentSchComponent.DisplayMode;

    SchComponent.AddSchObject(P1);

    // Create Pin object
    P1 := SchServer.SchObjectFactory(ePin, eCreate_Default);
    If P1 = Nil Then Exit;

    // Define the pin parameters.
    P1.Location             := Point(MilsToCoord(6000), MilsToCoord(400));
    P1.Color                := $000000;
    P1.Orientation          := eRotate180;
    P1.Designator           := 'DVSS';
    P1.Name                 := 'DVSS';
    P1.OwnerPartId          := CurrentLib.CurrentSchComponent.CurrentPartID;
    P1.OwnerPartDisplayMode := CurrentLib.CurrentSchComponent.DisplayMode;

    SchComponent.AddSchObject(P1);

    // Create Pin object
    P1 := SchServer.SchObjectFactory(ePin, eCreate_Default);
    If P1 = Nil Then Exit;

    // Define the pin parameters.
    P1.Location             := Point(MilsToCoord(6000), MilsToCoord(500));
    P1.Color                := $000000;
    P1.Orientation          := eRotate180;
    P1.Designator           := 'DVSS';
    P1.Name                 := 'DVSS';
    P1.OwnerPartId          := CurrentLib.CurrentSchComponent.CurrentPartID;
    P1.OwnerPartDisplayMode := CurrentLib.CurrentSchComponent.DisplayMode;

    SchComponent.AddSchObject(P1);

    // Create Pin object
    P1 := SchServer.SchObjectFactory(ePin, eCreate_Default);
    If P1 = Nil Then Exit;

    // Define the pin parameters.
    P1.Location             := Point(MilsToCoord(6000), MilsToCoord(600));
    P1.Color                := $000000;
    P1.Orientation          := eRotate180;
    P1.Designator           := 'DVSS';
    P1.Name                 := 'DVSS';
    P1.OwnerPartId          := CurrentLib.CurrentSchComponent.CurrentPartID;
    P1.OwnerPartDisplayMode := CurrentLib.CurrentSchComponent.DisplayMode;

    SchComponent.AddSchObject(P1);

    // Create Pin object
    P1 := SchServer.SchObjectFactory(ePin, eCreate_Default);
    If P1 = Nil Then Exit;

    // Define the pin parameters.
    P1.Location             := Point(MilsToCoord(6000), MilsToCoord(700));
    P1.Color                := $000000;
    P1.Orientation          := eRotate180;
    P1.Designator           := 'DVSS';
    P1.Name                 := 'DVSS';
    P1.OwnerPartId          := CurrentLib.CurrentSchComponent.CurrentPartID;
    P1.OwnerPartDisplayMode := CurrentLib.CurrentSchComponent.DisplayMode;

    SchComponent.AddSchObject(P1);

    // Create Pin object
    P1 := SchServer.SchObjectFactory(ePin, eCreate_Default);
    If P1 = Nil Then Exit;

    // Define the pin parameters.
    P1.Location             := Point(MilsToCoord(6000), MilsToCoord(800));
    P1.Color                := $000000;
    P1.Orientation          := eRotate180;
    P1.Designator           := 'DVSS';
    P1.Name                 := 'DVSS';
    P1.OwnerPartId          := CurrentLib.CurrentSchComponent.CurrentPartID;
    P1.OwnerPartDisplayMode := CurrentLib.CurrentSchComponent.DisplayMode;

    SchComponent.AddSchObject(P1);

    // Create Pin object
    P1 := SchServer.SchObjectFactory(ePin, eCreate_Default);
    If P1 = Nil Then Exit;

    // Define the pin parameters.
    P1.Location             := Point(MilsToCoord(6000), MilsToCoord(900));
    P1.Color                := $000000;
    P1.Orientation          := eRotate180;
    P1.Designator           := 'DVSS';
    P1.Name                 := 'DVSS';
    P1.OwnerPartId          := CurrentLib.CurrentSchComponent.CurrentPartID;
    P1.OwnerPartDisplayMode := CurrentLib.CurrentSchComponent.DisplayMode;

    SchComponent.AddSchObject(P1);

    // Create Pin object
    P1 := SchServer.SchObjectFactory(ePin, eCreate_Default);
    If P1 = Nil Then Exit;

    // Define the pin parameters.
    P1.Location             := Point(MilsToCoord(6000), MilsToCoord(1000));
    P1.Color                := $000000;
    P1.Orientation          := eRotate180;
    P1.Designator           := 'DVSS';
    P1.Name                 := 'DVSS';
    P1.OwnerPartId          := CurrentLib.CurrentSchComponent.CurrentPartID;
    P1.OwnerPartDisplayMode := CurrentLib.CurrentSchComponent.DisplayMode;

    SchComponent.AddSchObject(P1);

    // Create Pin object
    P1 := SchServer.SchObjectFactory(ePin, eCreate_Default);
    If P1 = Nil Then Exit;

    // Define the pin parameters.
    P1.Location             := Point(MilsToCoord(6000), MilsToCoord(1100));
    P1.Color                := $000000;
    P1.Orientation          := eRotate180;
    P1.Designator           := 'DVSS';
    P1.Name                 := 'DVSS';
    P1.OwnerPartId          := CurrentLib.CurrentSchComponent.CurrentPartID;
    P1.OwnerPartDisplayMode := CurrentLib.CurrentSchComponent.DisplayMode;

    SchComponent.AddSchObject(P1);

    // Create Pin object
    P1 := SchServer.SchObjectFactory(ePin, eCreate_Default);
    If P1 = Nil Then Exit;

    // Define the pin parameters.
    P1.Location             := Point(MilsToCoord(6000), MilsToCoord(1200));
    P1.Color                := $000000;
    P1.Orientation          := eRotate180;
    P1.Designator           := 'DVSS';
    P1.Name                 := 'DVSS';
    P1.OwnerPartId          := CurrentLib.CurrentSchComponent.CurrentPartID;
    P1.OwnerPartDisplayMode := CurrentLib.CurrentSchComponent.DisplayMode;

    SchComponent.AddSchObject(P1);

    // Create Pin object
    P1 := SchServer.SchObjectFactory(ePin, eCreate_Default);
    If P1 = Nil Then Exit;

    // Define the pin parameters.
    P1.Location             := Point(MilsToCoord(6000), MilsToCoord(1300));
    P1.Color                := $000000;
    P1.Orientation          := eRotate180;
    P1.Designator           := 'DVSS';
    P1.Name                 := 'DVSS';
    P1.OwnerPartId          := CurrentLib.CurrentSchComponent.CurrentPartID;
    P1.OwnerPartDisplayMode := CurrentLib.CurrentSchComponent.DisplayMode;

    SchComponent.AddSchObject(P1);

    // Create Pin object
    P1 := SchServer.SchObjectFactory(ePin, eCreate_Default);
    If P1 = Nil Then Exit;

    // Define the pin parameters.
    P1.Location             := Point(MilsToCoord(0), MilsToCoord(100));
    P1.Color                := $000000;
    P1.Orientation          := eRotate180;
    P1.Designator           := 'IO0';
    P1.Name                 := 'IO0';
    P1.OwnerPartId          := CurrentLib.CurrentSchComponent.CurrentPartID;
    P1.OwnerPartDisplayMode := CurrentLib.CurrentSchComponent.DisplayMode;

    SchComponent.AddSchObject(P1);

    // Create Pin object
    P1 := SchServer.SchObjectFactory(ePin, eCreate_Default);
    If P1 = Nil Then Exit;

    // Define the pin parameters.
    P1.Location             := Point(MilsToCoord(0), MilsToCoord(200));
    P1.Color                := $000000;
    P1.Orientation          := eRotate180;
    P1.Designator           := 'IO1';
    P1.Name                 := 'IO1';
    P1.OwnerPartId          := CurrentLib.CurrentSchComponent.CurrentPartID;
    P1.OwnerPartDisplayMode := CurrentLib.CurrentSchComponent.DisplayMode;

    SchComponent.AddSchObject(P1);

    // Create Pin object
    P1 := SchServer.SchObjectFactory(ePin, eCreate_Default);
    If P1 = Nil Then Exit;

    // Define the pin parameters.
    P1.Location             := Point(MilsToCoord(0), MilsToCoord(300));
    P1.Color                := $000000;
    P1.Orientation          := eRotate180;
    P1.Designator           := 'IO2';
    P1.Name                 := 'IO2';
    P1.OwnerPartId          := CurrentLib.CurrentSchComponent.CurrentPartID;
    P1.OwnerPartDisplayMode := CurrentLib.CurrentSchComponent.DisplayMode;

    SchComponent.AddSchObject(P1);

    // Create Pin object
    P1 := SchServer.SchObjectFactory(ePin, eCreate_Default);
    If P1 = Nil Then Exit;

    // Define the pin parameters.
    P1.Location             := Point(MilsToCoord(0), MilsToCoord(400));
    P1.Color                := $000000;
    P1.Orientation          := eRotate180;
    P1.Designator           := 'IO3';
    P1.Name                 := 'IO3';
    P1.OwnerPartId          := CurrentLib.CurrentSchComponent.CurrentPartID;
    P1.OwnerPartDisplayMode := CurrentLib.CurrentSchComponent.DisplayMode;

    SchComponent.AddSchObject(P1);

    // Create Pin object
    P1 := SchServer.SchObjectFactory(ePin, eCreate_Default);
    If P1 = Nil Then Exit;

    // Define the pin parameters.
    P1.Location             := Point(MilsToCoord(0), MilsToCoord(500));
    P1.Color                := $000000;
    P1.Orientation          := eRotate180;
    P1.Designator           := 'IO4';
    P1.Name                 := 'IO4';
    P1.OwnerPartId          := CurrentLib.CurrentSchComponent.CurrentPartID;
    P1.OwnerPartDisplayMode := CurrentLib.CurrentSchComponent.DisplayMode;

    SchComponent.AddSchObject(P1);

    // Create Pin object
    P1 := SchServer.SchObjectFactory(ePin, eCreate_Default);
    If P1 = Nil Then Exit;

    // Define the pin parameters.
    P1.Location             := Point(MilsToCoord(0), MilsToCoord(600));
    P1.Color                := $000000;
    P1.Orientation          := eRotate180;
    P1.Designator           := 'IO5';
    P1.Name                 := 'IO5';
    P1.OwnerPartId          := CurrentLib.CurrentSchComponent.CurrentPartID;
    P1.OwnerPartDisplayMode := CurrentLib.CurrentSchComponent.DisplayMode;

    SchComponent.AddSchObject(P1);

    // Create Pin object
    P1 := SchServer.SchObjectFactory(ePin, eCreate_Default);
    If P1 = Nil Then Exit;

    // Define the pin parameters.
    P1.Location             := Point(MilsToCoord(0), MilsToCoord(700));
    P1.Color                := $000000;
    P1.Orientation          := eRotate180;
    P1.Designator           := 'IO6';
    P1.Name                 := 'IO6';
    P1.OwnerPartId          := CurrentLib.CurrentSchComponent.CurrentPartID;
    P1.OwnerPartDisplayMode := CurrentLib.CurrentSchComponent.DisplayMode;

    SchComponent.AddSchObject(P1);

    // Create Pin object
    P1 := SchServer.SchObjectFactory(ePin, eCreate_Default);
    If P1 = Nil Then Exit;

    // Define the pin parameters.
    P1.Location             := Point(MilsToCoord(0), MilsToCoord(800));
    P1.Color                := $000000;
    P1.Orientation          := eRotate180;
    P1.Designator           := 'IO7';
    P1.Name                 := 'IO7';
    P1.OwnerPartId          := CurrentLib.CurrentSchComponent.CurrentPartID;
    P1.OwnerPartDisplayMode := CurrentLib.CurrentSchComponent.DisplayMode;

    SchComponent.AddSchObject(P1);

    // Create Pin object
    P1 := SchServer.SchObjectFactory(ePin, eCreate_Default);
    If P1 = Nil Then Exit;

    // Define the pin parameters.
    P1.Location             := Point(MilsToCoord(0), MilsToCoord(900));
    P1.Color                := $000000;
    P1.Orientation          := eRotate180;
    P1.Designator           := 'IO8';
    P1.Name                 := 'IO8';
    P1.OwnerPartId          := CurrentLib.CurrentSchComponent.CurrentPartID;
    P1.OwnerPartDisplayMode := CurrentLib.CurrentSchComponent.DisplayMode;

    SchComponent.AddSchObject(P1);

    // Create Pin object
    P1 := SchServer.SchObjectFactory(ePin, eCreate_Default);
    If P1 = Nil Then Exit;

    // Define the pin parameters.
    P1.Location             := Point(MilsToCoord(0), MilsToCoord(1000));
    P1.Color                := $000000;
    P1.Orientation          := eRotate180;
    P1.Designator           := 'IO9';
    P1.Name                 := 'IO9';
    P1.OwnerPartId          := CurrentLib.CurrentSchComponent.CurrentPartID;
    P1.OwnerPartDisplayMode := CurrentLib.CurrentSchComponent.DisplayMode;

    SchComponent.AddSchObject(P1);

    // Create Pin object
    P1 := SchServer.SchObjectFactory(ePin, eCreate_Default);
    If P1 = Nil Then Exit;

    // Define the pin parameters.
    P1.Location             := Point(MilsToCoord(0), MilsToCoord(1100));
    P1.Color                := $000000;
    P1.Orientation          := eRotate180;
    P1.Designator           := 'IO10';
    P1.Name                 := 'IO10';
    P1.OwnerPartId          := CurrentLib.CurrentSchComponent.CurrentPartID;
    P1.OwnerPartDisplayMode := CurrentLib.CurrentSchComponent.DisplayMode;

    SchComponent.AddSchObject(P1);

    // Create Pin object
    P1 := SchServer.SchObjectFactory(ePin, eCreate_Default);
    If P1 = Nil Then Exit;

    // Define the pin parameters.
    P1.Location             := Point(MilsToCoord(0), MilsToCoord(1200));
    P1.Color                := $000000;
    P1.Orientation          := eRotate180;
    P1.Designator           := 'IO11';
    P1.Name                 := 'IO11';
    P1.OwnerPartId          := CurrentLib.CurrentSchComponent.CurrentPartID;
    P1.OwnerPartDisplayMode := CurrentLib.CurrentSchComponent.DisplayMode;

    SchComponent.AddSchObject(P1);

    // Create Pin object
    P1 := SchServer.SchObjectFactory(ePin, eCreate_Default);
    If P1 = Nil Then Exit;

    // Define the pin parameters.
    P1.Location             := Point(MilsToCoord(0), MilsToCoord(1300));
    P1.Color                := $000000;
    P1.Orientation          := eRotate180;
    P1.Designator           := 'IO12';
    P1.Name                 := 'IO12';
    P1.OwnerPartId          := CurrentLib.CurrentSchComponent.CurrentPartID;
    P1.OwnerPartDisplayMode := CurrentLib.CurrentSchComponent.DisplayMode;

    SchComponent.AddSchObject(P1);

    // Create Pin object
    P1 := SchServer.SchObjectFactory(ePin, eCreate_Default);
    If P1 = Nil Then Exit;

    // Define the pin parameters.
    P1.Location             := Point(MilsToCoord(0), MilsToCoord(1400));
    P1.Color                := $000000;
    P1.Orientation          := eRotate180;
    P1.Designator           := 'IO13';
    P1.Name                 := 'IO13';
    P1.OwnerPartId          := CurrentLib.CurrentSchComponent.CurrentPartID;
    P1.OwnerPartDisplayMode := CurrentLib.CurrentSchComponent.DisplayMode;

    SchComponent.AddSchObject(P1);

    // Create Pin object
    P1 := SchServer.SchObjectFactory(ePin, eCreate_Default);
    If P1 = Nil Then Exit;

    // Define the pin parameters.
    P1.Location             := Point(MilsToCoord(0), MilsToCoord(1500));
    P1.Color                := $000000;
    P1.Orientation          := eRotate180;
    P1.Designator           := 'IO14';
    P1.Name                 := 'IO14';
    P1.OwnerPartId          := CurrentLib.CurrentSchComponent.CurrentPartID;
    P1.OwnerPartDisplayMode := CurrentLib.CurrentSchComponent.DisplayMode;

    SchComponent.AddSchObject(P1);

    // Create Rectangle object
    R := SchServer.SchObjectFactory(eRectangle, eCreate_Default);
    If R = Nil Then Exit;

    // Define the rectangle parameters.
    R.LineWidth   := eSmall;
    R.Transparent := True;
    R.Location    := Point(MilsToCoord(0), MilsToCoord(0));
    R.Corner      := Point(MilsToCoord(1500), MilsToCoord(1600));
    R.OwnerPartId          := CurrentLib.CurrentSchComponent.CurrentPartID;
    R.OwnerPartDisplayMode := CurrentLib.CurrentSchComponent.DisplayMode;

    SchComponent.AddSchObject(R);

    // Create Rectangle object
    R := SchServer.SchObjectFactory(eRectangle, eCreate_Default);
    If R = Nil Then Exit;

    // Define the rectangle parameters.
    R.LineWidth   := eSmall;
    R.Transparent := True;
    R.Location    := Point(MilsToCoord(3000), MilsToCoord(0));
    R.Corner      := Point(MilsToCoord(4000), MilsToCoord(1400));
    R.OwnerPartId          := CurrentLib.CurrentSchComponent.CurrentPartID;
    R.OwnerPartDisplayMode := CurrentLib.CurrentSchComponent.DisplayMode;

    SchComponent.AddSchObject(R);

    // Create Rectangle object
    R := SchServer.SchObjectFactory(eRectangle, eCreate_Default);
    If R = Nil Then Exit;

    // Define the rectangle parameters.
    R.LineWidth   := eSmall;
    R.Transparent := True;
    R.Location    := Point(MilsToCoord(6000), MilsToCoord(0));
    R.Corner      := Point(MilsToCoord(7000), MilsToCoord(1400));
    R.OwnerPartId          := CurrentLib.CurrentSchComponent.CurrentPartID;
    R.OwnerPartDisplayMode := CurrentLib.CurrentSchComponent.DisplayMode;

    SchComponent.AddSchObject(R);


    CurrentLib.AddSchComponent(SchComponent);

    // Send a system notification that a new component has been added to the library.
    SchServer.RobotManager.SendMessage(nil, c_BroadCast, SCHM_PrimitiveRegistration, SCHComponent.I_ObjectAddress);
    CurrentLib.CurrentSchComponent := SchComponent;

	CurrentLib.CurrentSchComponent.Designator.Text      := 'ASIC?';
	CurrentLib.CurrentSchComponent.Comment.Text         := 'Custom IC';
	CurrentLib.CurrentSchComponent.ComponentDescription := 'Custom IC';

    // Refresh library.
    CurrentLib.GraphicallyInvalidate;
End;
{..............................................................................}

{..............................................................................}
