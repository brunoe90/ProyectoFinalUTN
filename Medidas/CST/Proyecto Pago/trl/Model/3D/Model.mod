'# MWS Version: Version 2018.0 - Oct 26 2017 - ACIS 27.0.2 -

'# length = um
'# frequency = GHz
'# time = ns
'# frequency range: fmin = 1 fmax = 30
'# created = '[VERSION]2018.0|27.0.2|20171026[/VERSION]


'@ use template: TRL.cfg

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
'set the units
With Units
    .Geometry "mm"
    .Frequency "GHz"
    .Voltage "V"
    .Resistance "Ohm"
    .Inductance "H"
    .TemperatureUnit  "Kelvin"
    .Time "ns"
    .Current "A"
    .Conductance "Siemens"
    .Capacitance "F"
End With
'----------------------------------------------------------------------------
With Background
     .Type "Normal"
     .Epsilon "1.0"
     .Mu "1.0"
     .XminSpace "0.0"
     .XmaxSpace "0.0"
     .YminSpace "0.0"
     .YmaxSpace "0.0"
     .ZminSpace "0.0"
     .ZmaxSpace "0.0"
End With
With Boundary
     .Xmin "electric"
     .Xmax "electric"
     .Ymin "electric"
     .Ymax "electric"
     .Zmin "electric"
     .Zmax "electric"
End With
' mesh - Tetrahedral
With Mesh
     .MeshType "Tetrahedral"
     .SetCreator "High Frequency"
End With
With MeshSettings
     .SetMeshType "Tet"
     .Set "Version", 1%
     .Set "StepsPerWaveNear", "6"
     .Set "StepsPerBoxNear", "10"
     .Set "CellsPerWavelengthPolicy", "automatic"
     .Set "CurvatureOrder", "2"
     .Set "CurvatureOrderPolicy", "automatic"
     .Set "CurvRefinementControl", "NormalTolerance"
     .Set "NormalTolerance", "60"
     .Set "SrfMeshGradation", "1.5"
     .Set "UseAnisoCurveRefinement", "1"
     .Set "UseSameSrfAndVolMeshGradation", "1"
     .Set "VolMeshGradation", "1.5"
End With
With MeshSettings
     .SetMeshType "Unstr"
     .Set "MoveMesh", "1"
     .Set "OptimizeForPlanarStructures", "1"
End With
With Mesh
     .MeshType "PBA"
     .SetCreator "High Frequency"
     .AutomeshRefineAtPecLines "True", "4"
     .UseRatioLimit "True"
     .RatioLimit "50"
     .LinesPerWavelength "20"
     .MinimumStepNumber "10"
     .Automesh "True"
End With
With MeshSettings
     .SetMeshType "Hex"
     .Set "RatioLimitGeometry", "50"
     .Set "StepsPerWaveNear", "20"
     .Set "EdgeRefinementOn", "1"
     .Set "EdgeRefinementRatio", "4"
End With
' mesh - Multilayer (Preview)
' default
' solver - FD settings
With FDSolver
     .Reset
     .Method "Tetrahedral Mesh" ' i.e. general purpose
     .AccuracyHex "1e-6"
     .AccuracyTet "1e-5"
     .AccuracySrf "1e-3"
     .SetUseFastResonantForSweepTet "False"
     .Type "Direct"
     .MeshAdaptionHex "False"
     .MeshAdaptionTet "True"
     .InterpolationSamples "5001"
End With
With MeshAdaption3D
    .SetType "HighFrequencyTet"
    .SetAdaptionStrategy "Energy"
    .MinPasses "3"
    .MaxPasses "10"
End With
FDSolver.SetShieldAllPorts "True"
With FDSolver
     .Method "Tetrahedral Mesh (MOR)"
     .HexMORSettings "", "5001"
End With
FDSolver.Method "Tetrahedral Mesh" ' i.e. general purpose
' solver - TD settings
With MeshAdaption3D
    .SetType "Time"
    .SetAdaptionStrategy "Energy"
    .CellIncreaseFactor "0.5"
    .AddSParameterStopCriterion "True", "0.0", "10", "0.01", "1", "True"
End With
With Solver
     .Method "Hexahedral"
     .SteadyStateLimit "-40"
     .MeshAdaption "True"
     .NumberOfPulseWidths "50"
     .FrequencySamples "5001"
     .UseArfilter "True"
End With
' solver - M settings
'----------------------------------------------------------------------------
'set the frequency range
Solver.FrequencyRange "1", "30"
'----------------------------------------------------------------------------
With FDSolver
     .SetMethod "Tetrahedral", "Fast reduced order model"
End With
With MeshSettings
     .SetMeshType "Tet"
     .Set "Version", 1%
End With
With Mesh
     .MeshType "Tetrahedral"
End With
'set the solver type
ChangeSolverType("HF Frequency Domain")

'@ define material: Copper (annealed)

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Material
     .Reset
     .Name "Copper (annealed)"
     .Folder ""
     .FrqType "static"
     .Type "Normal"
     .SetMaterialUnit "Hz", "mm"
     .Epsilon "1"
     .Mu "1.0"
     .Kappa "5.8e+007"
     .TanD "0.0"
     .TanDFreq "0.0"
     .TanDGiven "False"
     .TanDModel "ConstTanD"
     .KappaM "0"
     .TanDM "0.0"
     .TanDMFreq "0.0"
     .TanDMGiven "False"
     .TanDMModel "ConstTanD"
     .DispModelEps "None"
     .DispModelMu "None"
     .DispersiveFittingSchemeEps "Nth Order"
     .DispersiveFittingSchemeMu "Nth Order"
     .UseGeneralDispersionEps "False"
     .UseGeneralDispersionMu "False"
     .FrqType "all"
     .Type "Lossy metal"
     .SetMaterialUnit "GHz", "mm"
     .Mu "1.0"
     .Kappa "5.8e+007"
     .Rho "8930.0"
     .ThermalType "Normal"
     .ThermalConductivity "401.0"
     .HeatCapacity "0.39"
     .MetabolicRate "0"
     .BloodFlow "0"
     .VoxelConvection "0"
     .MechanicsType "Isotropic"
     .YoungsModulus "120"
     .PoissonsRatio "0.33"
     .ThermalExpansionRate "17"
     .Colour "1", "1", "0"
     .Wireframe "False"
     .Reflection "False"
     .Allowoutline "True"
     .Transparentoutline "False"
     .Transparency "0"
     .Create
End With

'@ new component: component1

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Component.New "component1"

'@ define brick: component1:copper

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Brick
     .Reset 
     .Name "copper" 
     .Component "component1" 
     .Material "Copper (annealed)" 
     .Xrange "-4", "4" 
     .Yrange "-6", "4" 
     .Zrange "0", "2" 
     .Create
End With

'@ pick edge

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Pick.PickEdgeFromId "component1:copper", "4", "4"

'@ define distance dimension

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Dimension
    .Reset
    .CreationType "picks"
    .SetType "Distance"
    .SetID "0"
    .SetOrientation "Smart Mode"
    .SetDistance "2.391474"
    .SetViewVector "0.011033", "0.516271", "-0.856354"
    .SetConnectedElement1 "component1:copper"
    .SetConnectedElement2 "component1:copper"
    .Create
End With
Pick.ClearAllPicks

'@ pick edge

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Pick.PickEdgeFromId "component1:copper", "3", "3"

'@ define distance dimension

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Dimension
    .Reset
    .CreationType "picks"
    .SetType "Distance"
    .SetID "1"
    .SetOrientation "Smart Mode"
    .SetDistance "3.299346"
    .SetViewVector "0.011033", "0.516271", "-0.856354"
    .SetConnectedElement1 "component1:copper"
    .SetConnectedElement2 "component1:copper"
    .Create
End With
Pick.ClearAllPicks

'@ pick edge

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Pick.PickEdgeFromId "component1:copper", "10", "1"

'@ define distance dimension

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Dimension
    .Reset
    .CreationType "picks"
    .SetType "Distance"
    .SetID "2"
    .SetOrientation "Smart Mode"
    .SetDistance "2.384213"
    .SetViewVector "-0.004456", "0.931531", "-0.363635"
    .SetConnectedElement1 "component1:copper"
    .SetConnectedElement2 "component1:copper"
    .Create
End With
Pick.ClearAllPicks

'@ define units

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Units 
     .Geometry "um" 
     .Frequency "GHz" 
     .Time "ns" 
     .TemperatureUnit "Kelvin" 
     .Voltage "V" 
     .Current "A" 
     .Resistance "Ohm" 
     .Conductance "Siemens" 
     .Capacitance "F" 
     .Inductance "H" 
End With

'@ transform: scale component1

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Transform 
     .Reset 
     .Name "component1" 
     .Origin "Free" 
     .Center "0", "0", "0" 
     .ScaleFactor "1", "1", "17.5" 
     .MultipleObjects "False" 
     .GroupObjects "False" 
     .Repetitions "1" 
     .MultipleSelection "False" 
     .Transform "Shape", "Scale" 
End With

'@ transform: scale component1

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Transform 
     .Reset 
     .Name "component1" 
     .Origin "Free" 
     .Center "0", "0", "0" 
     .ScaleFactor "43", "747", "1" 
     .MultipleObjects "False" 
     .GroupObjects "False" 
     .Repetitions "1" 
     .MultipleSelection "False" 
     .Transform "Shape", "Scale" 
End With

'@ paste structure data: 1

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With SAT 
     .Reset 
     .FileName "*1.cby" 
     .SubProjectScaleFactor "1e-06" 
     .ImportToActiveCoordinateSystem "True" 
     .ScaleToUnit "True" 
     .Curves "False" 
     .Read 
End With

'@ transform: translate component1:copper

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Transform 
     .Reset 
     .Name "component1:copper" 
     .Vector "-3000", "0", "0" 
     .UsePickedPoints "False" 
     .InvertPickedPoints "False" 
     .MultipleObjects "False" 
     .GroupObjects "False" 
     .Repetitions "1" 
     .MultipleSelection "False" 
     .Transform "Shape", "Translate" 
End With

'@ pick edge

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Pick.PickEdgeFromId "component1/component1:copper", "3", "3"

'@ define distance dimension

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Dimension
    .Reset
    .CreationType "picks"
    .SetType "Distance"
    .SetID "3"
    .SetOrientation "Smart Mode"
    .SetDistance "785.257019"
    .SetViewVector "0.134170", "0.611522", "-0.779769"
    .SetConnectedElement1 "component1/component1:copper"
    .SetConnectedElement2 "component1/component1:copper"
    .Create
End With
Pick.ClearAllPicks

'@ pick edge

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Pick.PickEdgeFromId "component1/component1:copper", "4", "4"

'@ define distance dimension

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Dimension
    .Reset
    .CreationType "picks"
    .SetType "Distance"
    .SetID "4"
    .SetOrientation "Smart Mode"
    .SetDistance "652.268433"
    .SetViewVector "0.134143", "0.611646", "-0.779676"
    .SetConnectedElement1 "component1/component1:copper"
    .SetConnectedElement2 "component1/component1:copper"
    .Create
End With
Pick.ClearAllPicks

'@ transform: scale component1/component1

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Transform 
     .Reset 
     .Name "component1/component1" 
     .Origin "Free" 
     .Center "0", "0", "0" 
     .ScaleFactor "1", "0.215", "1" 
     .MultipleObjects "False" 
     .GroupObjects "False" 
     .Repetitions "1" 
     .MultipleSelection "False" 
     .Transform "Shape", "Scale" 
End With

'@ transform: scale component1/component1

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Transform 
     .Reset 
     .Name "component1/component1" 
     .Origin "Free" 
     .Center "0", "0", "0" 
     .ScaleFactor "1.1", "1", "1" 
     .MultipleObjects "False" 
     .GroupObjects "False" 
     .Repetitions "1" 
     .MultipleSelection "False" 
     .Transform "Shape", "Scale" 
End With

'@ transform: scale component1/component1

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Transform 
     .Reset 
     .Name "component1/component1" 
     .Origin "Free" 
     .Center "0", "0", "0" 
     .ScaleFactor "0.9", "1", "1" 
     .MultipleObjects "False" 
     .GroupObjects "False" 
     .Repetitions "1" 
     .MultipleSelection "False" 
     .Transform "Shape", "Scale" 
End With

'@ transform: scale component1/component1

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Transform 
     .Reset 
     .Name "component1/component1" 
     .Origin "Free" 
     .Center "0", "0", "0" 
     .ScaleFactor "1.021", "1", "1" 
     .MultipleObjects "False" 
     .GroupObjects "False" 
     .Repetitions "1" 
     .MultipleSelection "False" 
     .Transform "Shape", "Scale" 
End With

'@ define brick: component1/component1:solid1

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Brick
     .Reset 
     .Name "solid1" 
     .Component "component1/component1" 
     .Material "Copper (annealed)" 
     .Xrange "-7000", "-4000" 
     .Yrange "-6000", "4000" 
     .Zrange "0", "3000" 
     .Create
End With

'@ transform: scale component1/component1:solid1

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Transform 
     .Reset 
     .Name "component1/component1:solid1" 
     .Origin "Free" 
     .Center "0", "0", "0" 
     .ScaleFactor "1", "1", "0.10" 
     .MultipleObjects "False" 
     .GroupObjects "False" 
     .Repetitions "1" 
     .MultipleSelection "False" 
     .Transform "Shape", "Scale" 
End With

'@ transform: scale component1/component1:solid1

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Transform 
     .Reset 
     .Name "component1/component1:solid1" 
     .Origin "Free" 
     .Center "0", "0", "0" 
     .ScaleFactor "1.00", "1", "1.10" 
     .MultipleObjects "False" 
     .GroupObjects "False" 
     .Repetitions "1" 
     .MultipleSelection "False" 
     .Transform "Shape", "Scale" 
End With

'@ transform: scale component1/component1:solid1

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Transform 
     .Reset 
     .Name "component1/component1:solid1" 
     .Origin "Free" 
     .Center "0", "0", "0" 
     .ScaleFactor "1.00", "1", "1" 
     .MultipleObjects "False" 
     .GroupObjects "False" 
     .Repetitions "1" 
     .MultipleSelection "False" 
     .Transform "Shape", "Scale" 
End With

'@ transform: scale component1/component1:solid1

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Transform 
     .Reset 
     .Name "component1/component1:solid1" 
     .Origin "Free" 
     .Center "0", "0", "0" 
     .ScaleFactor "0.8", "0.8", "0.8" 
     .MultipleObjects "False" 
     .GroupObjects "False" 
     .Repetitions "1" 
     .MultipleSelection "False" 
     .Transform "Shape", "Scale" 
End With

'@ transform: translate component1/component1:solid1

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Transform 
     .Reset 
     .Name "component1/component1:solid1" 
     .Vector "-100", "0", "0" 
     .UsePickedPoints "False" 
     .InvertPickedPoints "False" 
     .MultipleObjects "False" 
     .GroupObjects "False" 
     .Repetitions "1" 
     .MultipleSelection "False" 
     .Transform "Shape", "Translate" 
End With

'@ transform: scale component1/component1:solid1

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Transform 
     .Reset 
     .Name "component1/component1:solid1" 
     .Origin "Free" 
     .Center "0", "0", "0" 
     .ScaleFactor "1", "1", "0.20" 
     .MultipleObjects "False" 
     .GroupObjects "False" 
     .Repetitions "1" 
     .MultipleSelection "False" 
     .Transform "Shape", "Scale" 
End With

'@ transform: scale component1/component1:solid1

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Transform 
     .Reset 
     .Name "component1/component1:solid1" 
     .Origin "Free" 
     .Center "0", "0", "0" 
     .ScaleFactor "0.3", "1", "1" 
     .MultipleObjects "False" 
     .GroupObjects "False" 
     .Repetitions "1" 
     .MultipleSelection "False" 
     .Transform "Shape", "Scale" 
End With

'@ transform: scale component1/component1:solid1

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Transform 
     .Reset 
     .Name "component1/component1:solid1" 
     .Origin "Free" 
     .Center "0", "0", "0" 
     .ScaleFactor "0.5", "1", "1" 
     .MultipleObjects "False" 
     .GroupObjects "False" 
     .Repetitions "1" 
     .MultipleSelection "False" 
     .Transform "Shape", "Scale" 
End With

'@ transform: translate component1/component1:solid1

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Transform 
     .Reset 
     .Name "component1/component1:solid1" 
     .Vector "-2900", "0", "0" 
     .UsePickedPoints "False" 
     .InvertPickedPoints "False" 
     .MultipleObjects "False" 
     .GroupObjects "False" 
     .Repetitions "1" 
     .MultipleSelection "False" 
     .Transform "Shape", "Translate" 
End With

'@ paste structure data: 2

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With SAT 
     .Reset 
     .FileName "*2.cby" 
     .SubProjectScaleFactor "1e-06" 
     .ImportToActiveCoordinateSystem "True" 
     .ScaleToUnit "True" 
     .Curves "False" 
     .Read 
End With

'@ transform: translate component2

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Transform 
     .Reset 
     .Name "component2" 
     .Vector "1300", "0", "0" 
     .UsePickedPoints "False" 
     .InvertPickedPoints "False" 
     .MultipleObjects "False" 
     .GroupObjects "False" 
     .Repetitions "1" 
     .MultipleSelection "False" 
     .Transform "Shape", "Translate" 
End With

'@ transform: translate component2

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Transform 
     .Reset 
     .Name "component2" 
     .Vector "-200", "0", "0" 
     .UsePickedPoints "False" 
     .InvertPickedPoints "False" 
     .MultipleObjects "False" 
     .GroupObjects "False" 
     .Repetitions "1" 
     .MultipleSelection "False" 
     .Transform "Shape", "Translate" 
End With

'@ transform: scale component2

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Transform 
     .Reset 
     .Name "component2" 
     .Origin "Free" 
     .Center "0", "0", "0" 
     .ScaleFactor "5.70", "1.0", "1.0" 
     .MultipleObjects "False" 
     .GroupObjects "False" 
     .Repetitions "1" 
     .MultipleSelection "False" 
     .Transform "Shape", "Scale" 
End With

'@ transform: translate component2

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Transform 
     .Reset 
     .Name "component2" 
     .Vector "1.25e+04", "0", "0" 
     .UsePickedPoints "False" 
     .InvertPickedPoints "False" 
     .MultipleObjects "False" 
     .GroupObjects "False" 
     .Repetitions "1" 
     .MultipleSelection "False" 
     .Transform "Shape", "Translate" 
End With

'@ transform: translate component1/component1:copper

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Transform 
     .Reset 
     .Name "component1/component1:copper" 
     .Vector "-250", "0", "0" 
     .UsePickedPoints "False" 
     .InvertPickedPoints "False" 
     .MultipleObjects "False" 
     .GroupObjects "False" 
     .Repetitions "1" 
     .MultipleSelection "False" 
     .Transform "Shape", "Translate" 
End With

'@ transform: translate component1/component1:solid1

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Transform 
     .Reset 
     .Name "component1/component1:solid1" 
     .Vector "50", "0", "0" 
     .UsePickedPoints "False" 
     .InvertPickedPoints "False" 
     .MultipleObjects "False" 
     .GroupObjects "False" 
     .Repetitions "1" 
     .MultipleSelection "False" 
     .Transform "Shape", "Translate" 
End With

'@ transform: translate component2

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Transform 
     .Reset 
     .Name "component2" 
     .Vector "-50", "0", "0" 
     .UsePickedPoints "False" 
     .InvertPickedPoints "False" 
     .MultipleObjects "False" 
     .GroupObjects "False" 
     .Repetitions "1" 
     .MultipleSelection "False" 
     .Transform "Shape", "Translate" 
End With

'@ transform: translate component1/component1:copper

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Transform 
     .Reset 
     .Name "component1/component1:copper" 
     .Vector "-50", "0", "0" 
     .UsePickedPoints "False" 
     .InvertPickedPoints "False" 
     .MultipleObjects "False" 
     .GroupObjects "False" 
     .Repetitions "1" 
     .MultipleSelection "False" 
     .Transform "Shape", "Translate" 
End With

'@ paste structure data: 3

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With SAT 
     .Reset 
     .FileName "*3.cby" 
     .SubProjectScaleFactor "1e-06" 
     .ImportToActiveCoordinateSystem "True" 
     .ScaleToUnit "True" 
     .Curves "False" 
     .Read 
End With

'@ transform: translate component1/component1:solid1_1

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Transform 
     .Reset 
     .Name "component1/component1:solid1_1" 
     .Vector "3750", "0", "0" 
     .UsePickedPoints "False" 
     .InvertPickedPoints "False" 
     .MultipleObjects "False" 
     .GroupObjects "False" 
     .Repetitions "1" 
     .MultipleSelection "False" 
     .Transform "Shape", "Translate" 
End With

'@ define brick: component1/component1:solid1_2

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Brick
     .Reset 
     .Name "solid1_2" 
     .Component "component1/component1" 
     .Material "Copper (annealed)" 
     .Xrange "-3700", "400" 
     .Yrange "-7050", "-4850" 
     .Zrange "0", "50" 
     .Create
End With

'@ pick edge

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Pick.PickEdgeFromId "component1/component1:solid1", "9", "4"

'@ define distance dimension

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Dimension
    .Reset
    .CreationType "picks"
    .SetType "Distance"
    .SetID "5"
    .SetOrientation "Smart Mode"
    .SetDistance "204.844910"
    .SetViewVector "0.024561", "0.996195", "-0.083620"
    .SetConnectedElement1 "component1/component1:solid1"
    .SetConnectedElement2 "component1/component1:solid1"
    .Create
End With
Pick.ClearAllPicks

'@ pick edge

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Pick.PickEdgeFromId "component1/component1:solid1_2", "9", "4"

'@ define distance dimension

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Dimension
    .Reset
    .CreationType "picks"
    .SetType "Distance"
    .SetID "6"
    .SetOrientation "Smart Mode"
    .SetDistance "213.324722"
    .SetViewVector "0.024561", "0.996195", "-0.083620"
    .SetConnectedElement1 "component1/component1:solid1_2"
    .SetConnectedElement2 "component1/component1:solid1_2"
    .Create
End With
Pick.ClearAllPicks

'@ transform: translate component1/component1:solid1_2

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Transform 
     .Reset 
     .Name "component1/component1:solid1_2" 
     .Vector "0", "0", "0.946" 
     .UsePickedPoints "False" 
     .InvertPickedPoints "False" 
     .MultipleObjects "False" 
     .GroupObjects "False" 
     .Repetitions "1" 
     .MultipleSelection "False" 
     .Transform "Shape", "Translate" 
End With

'@ transform: scale component1/component1:solid1_2

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Transform 
     .Reset 
     .Name "component1/component1:solid1_2" 
     .Origin "Free" 
     .Center "0", "0", "0" 
     .ScaleFactor "1", "1", "1.057" 
     .MultipleObjects "False" 
     .GroupObjects "False" 
     .Repetitions "1" 
     .MultipleSelection "False" 
     .Transform "Shape", "Scale" 
End With

'@ transform: translate component1/component1:solid1_2

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Transform 
     .Reset 
     .Name "component1/component1:solid1_2" 
     .Vector "0", "60", "0" 
     .UsePickedPoints "False" 
     .InvertPickedPoints "False" 
     .MultipleObjects "False" 
     .GroupObjects "False" 
     .Repetitions "1" 
     .MultipleSelection "False" 
     .Transform "Shape", "Translate" 
End With

'@ transform: scale component1/component1:solid1_2

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Transform 
     .Reset 
     .Name "component1/component1:solid1_2" 
     .Origin "Free" 
     .Center "0", "0", "0" 
     .ScaleFactor "1", "0.60", "1" 
     .MultipleObjects "False" 
     .GroupObjects "False" 
     .Repetitions "1" 
     .MultipleSelection "False" 
     .Transform "Shape", "Scale" 
End With

'@ transform: translate component1/component1:solid1_2

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Transform 
     .Reset 
     .Name "component1/component1:solid1_2" 
     .Vector "0", "-1900", "0" 
     .UsePickedPoints "False" 
     .InvertPickedPoints "False" 
     .MultipleObjects "False" 
     .GroupObjects "False" 
     .Repetitions "1" 
     .MultipleSelection "False" 
     .Transform "Shape", "Translate" 
End With

'@ paste structure data: 4

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With SAT 
     .Reset 
     .FileName "*4.cby" 
     .SubProjectScaleFactor "1e-06" 
     .ImportToActiveCoordinateSystem "True" 
     .ScaleToUnit "True" 
     .Curves "False" 
     .Read 
End With

'@ transform: translate component3

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Transform 
     .Reset 
     .Name "component3" 
     .Vector "0", "9250", "0" 
     .UsePickedPoints "False" 
     .InvertPickedPoints "False" 
     .MultipleObjects "False" 
     .GroupObjects "False" 
     .Repetitions "1" 
     .MultipleSelection "False" 
     .Transform "Shape", "Translate" 
End With

'@ transform: scale component1/component1:solid1

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Transform 
     .Reset 
     .Name "component1/component1:solid1" 
     .Origin "Free" 
     .Center "0", "0", "0" 
     .ScaleFactor "1", "1", "0.6626" 
     .MultipleObjects "False" 
     .GroupObjects "False" 
     .Repetitions "1" 
     .MultipleSelection "True" 
     .Transform "Shape", "Scale" 
End With

'@ transform: scale component1/component1:solid1_1

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Transform 
     .Reset 
     .Name "component1/component1:solid1_1" 
     .Origin "Free" 
     .Center "0", "0", "0" 
     .ScaleFactor "1", "1", "0.6626" 
     .MultipleObjects "False" 
     .GroupObjects "False" 
     .Repetitions "1" 
     .MultipleSelection "True" 
     .Transform "Shape", "Scale" 
End With

'@ transform: scale component1/component1:solid1_2

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Transform 
     .Reset 
     .Name "component1/component1:solid1_2" 
     .Origin "Free" 
     .Center "0", "0", "0" 
     .ScaleFactor "1", "1", "0.6626" 
     .MultipleObjects "False" 
     .GroupObjects "False" 
     .Repetitions "1" 
     .MultipleSelection "True" 
     .Transform "Shape", "Scale" 
End With

'@ transform: scale component2

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Transform 
     .Reset 
     .Name "component2" 
     .Origin "Free" 
     .Center "0", "0", "0" 
     .ScaleFactor "1", "1", "0.6626" 
     .MultipleObjects "False" 
     .GroupObjects "False" 
     .Repetitions "1" 
     .MultipleSelection "True" 
     .Transform "Shape", "Scale" 
End With

'@ transform: scale component3

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Transform 
     .Reset 
     .Name "component3" 
     .Origin "Free" 
     .Center "0", "0", "0" 
     .ScaleFactor "1", "1", "0.6626" 
     .MultipleObjects "False" 
     .GroupObjects "False" 
     .Repetitions "1" 
     .MultipleSelection "False" 
     .Transform "Shape", "Scale" 
End With

'@ rename block: component2:solid1 to: component2:solid1_3

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Solid.Rename "component2:solid1", "solid1_3"

'@ change component: component2:solid1_3 to: component1/component1:solid1_3

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Solid.ChangeComponent "component2:solid1_3", "component1/component1"

'@ rename block: component3:solid1_2 to: component3:solid1_4

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Solid.Rename "component3:solid1_2", "solid1_4"

'@ change component: component3:solid1_4 to: component1/component1:solid1_4

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Solid.ChangeComponent "component3:solid1_4", "component1/component1"

'@ delete shapes

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Component.Delete "component2" 
Component.Delete "component3"

'@ boolean add shapes: component1/component1:copper, component1/component1:solid1

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Solid.Add "component1/component1:copper", "component1/component1:solid1"

'@ boolean add shapes: component1/component1:copper, component1/component1:solid1_1

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Solid.Add "component1/component1:copper", "component1/component1:solid1_1"

'@ boolean add shapes: component1/component1:copper, component1/component1:solid1_2

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Solid.Add "component1/component1:copper", "component1/component1:solid1_2"

'@ boolean add shapes: component1/component1:copper, component1/component1:solid1_3

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Solid.Add "component1/component1:copper", "component1/component1:solid1_3"

'@ boolean add shapes: component1/component1:copper, component1/component1:solid1_4

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Solid.Add "component1/component1:copper", "component1/component1:solid1_4"

'@ boolean add shapes: component1/component1:copper, component1:copper

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Solid.Add "component1/component1:copper", "component1:copper"

'@ define material: Preperm 1000 (lossy)

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Material
     .Reset
     .Name "Preperm 1000 (lossy)"
     .Folder ""
     .FrqType "all"
     .Type "Normal"
     .SetMaterialUnit "GHz", "mm"
     .Epsilon "10.0"
     .Mu "1.0"
     .Kappa "0.0"
     .TanD "0.0027"
     .TanDFreq "1.0"
     .TanDGiven "True"
     .TanDModel "ConstTanD"
     .EnableUserConstTanDModelOrderEps "False"
     .KappaM "0.0"
     .TanDM "0.0"
     .TanDMFreq "0.0"
     .TanDMGiven "False"
     .TanDMModel "ConstKappa"
     .DispModelEps "None"
     .DispModelMu "None"
     .DispersiveFittingSchemeEps "General 1st"
     .DispersiveFittingSchemeMu "General 1st"
     .UseGeneralDispersionEps "False"
     .UseGeneralDispersionMu "False"
     .Rho "2450.0"
     .ThermalType "Normal"
     .ThermalConductivity "0.0"
     .SetActiveMaterial "all"
     .Colour "0.94", "0.82", "0.76"
     .Wireframe "False"
     .Transparency "0"
     .Create
End With

'@ new component: component2

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Component.New "component2"

'@ define brick: component2:dielectric

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Brick
     .Reset 
     .Name "dielectric" 
     .Component "component2" 
     .Material "Preperm 1000 (lossy)" 
     .Xrange "-1.18e+04", "-5400" 
     .Yrange "-6400", "5600" 
     .Zrange "0", "1200" 
     .Create
End With

'@ pick edge

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Pick.PickEdgeFromId "component2:dielectric", "9", "4"

'@ define distance dimension

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Dimension
    .Reset
    .CreationType "picks"
    .SetType "Distance"
    .SetID "7"
    .SetOrientation "Smart Mode"
    .SetDistance "2120.372070"
    .SetViewVector "0.073367", "0.911679", "-0.404300"
    .SetConnectedElement1 "component2:dielectric"
    .SetConnectedElement2 "component2:dielectric"
    .Create
End With
Pick.ClearAllPicks

'@ transform: scale component2

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Transform 
     .Reset 
     .Name "component2" 
     .Origin "Free" 
     .Center "0", "0", "0" 
     .ScaleFactor "1", "1", "1.06666666667" 
     .MultipleObjects "False" 
     .GroupObjects "False" 
     .Repetitions "1" 
     .MultipleSelection "False" 
     .Transform "Shape", "Scale" 
End With

'@ transform: translate component1

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Transform 
     .Reset 
     .Name "component1" 
     .Vector "-6800", "0", "2000" 
     .UsePickedPoints "False" 
     .InvertPickedPoints "False" 
     .MultipleObjects "False" 
     .GroupObjects "False" 
     .Repetitions "1" 
     .MultipleSelection "False" 
     .Transform "Shape", "Translate" 
End With

'@ delete dimension 1

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Dimension
    .RemoveDimension "1"
End With

'@ delete dimension 2

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Dimension
    .RemoveDimension "2"
End With

'@ delete dimension 6

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Dimension
    .RemoveDimension "6"
End With

'@ delete dimension 5

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Dimension
    .RemoveDimension "5"
End With

'@ delete dimension 0

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Dimension
    .RemoveDimension "0"
End With

'@ delete dimension 3

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Dimension
    .RemoveDimension "3"
End With

'@ delete dimension 4

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Dimension
    .RemoveDimension "4"
End With

'@ transform: scale component2

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Transform 
     .Reset 
     .Name "component2" 
     .Origin "Free" 
     .Center "0", "0", "0" 
     .ScaleFactor "0.8", "0.8", "0.8" 
     .MultipleObjects "False" 
     .GroupObjects "False" 
     .Repetitions "1" 
     .MultipleSelection "False" 
     .Transform "Shape", "Scale" 
End With

'@ transform: translate component2

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Transform 
     .Reset 
     .Name "component2" 
     .Vector "-1600", "-200", "0" 
     .UsePickedPoints "False" 
     .InvertPickedPoints "False" 
     .MultipleObjects "False" 
     .GroupObjects "False" 
     .Repetitions "1" 
     .MultipleSelection "False" 
     .Transform "Shape", "Translate" 
End With

'@ transform: scale component2

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Transform 
     .Reset 
     .Name "component2" 
     .Origin "Free" 
     .Center "0", "0", "0" 
     .ScaleFactor "1", "1.3", "1" 
     .MultipleObjects "False" 
     .GroupObjects "False" 
     .Repetitions "1" 
     .MultipleSelection "False" 
     .Transform "Shape", "Scale" 
End With

'@ transform: scale component2

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Transform 
     .Reset 
     .Name "component2" 
     .Origin "Free" 
     .Center "0", "0", "0" 
     .ScaleFactor "1", "10.9", "1" 
     .MultipleObjects "False" 
     .GroupObjects "False" 
     .Repetitions "1" 
     .MultipleSelection "False" 
     .Transform "Shape", "Scale" 
End With

'@ transform: scale component2

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Transform 
     .Reset 
     .Name "component2" 
     .Origin "Free" 
     .Center "0", "0", "0" 
     .ScaleFactor "1", "0.1", "1" 
     .MultipleObjects "False" 
     .GroupObjects "False" 
     .Repetitions "1" 
     .MultipleSelection "False" 
     .Transform "Shape", "Scale" 
End With

'@ transform: translate component2

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Transform 
     .Reset 
     .Name "component2" 
     .Vector "0", "500", "0" 
     .UsePickedPoints "False" 
     .InvertPickedPoints "False" 
     .MultipleObjects "False" 
     .GroupObjects "False" 
     .Repetitions "1" 
     .MultipleSelection "False" 
     .Transform "Shape", "Translate" 
End With

'@ align: Faces component1/component1:copper

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Pick 
     .PickFaceFromId "component1/component1:copper", "53" 
     .PickFaceFromId "component2:dielectric", "1" 
End With 
With Align
     .Reset 
     .Name "component1/component1:copper" 
     .SetKindOfPickFor "SourcePlane", "Face" 
     .SetKindOfPickFor "TargetPlane", "Face" 
     .Align "Shapes", "Faces" 
End With

'@ pick face

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Pick.PickFaceFromId "component1/component1:copper", "5"

'@ define port: 1

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Port 
     .Reset 
     .PortNumber "1" 
     .Label "" 
     .Folder "" 
     .NumberOfModes "1" 
     .AdjustPolarization "False" 
     .PolarizationAngle "0.0" 
     .ReferencePlaneDistance "0" 
     .TextSize "50" 
     .TextMaxLimit "1" 
     .Coordinates "Picks" 
     .Orientation "positive" 
     .PortOnBound "False" 
     .ClipPickedPortToBound "False" 
     .Xrange "-9994.5", "-9650.5" 
     .Yrange "-4033.84", "-4033.84" 
     .Zrange "1023.9852800032", "1058.9852800032" 
     .XrangeAdd "0.0", "0.0" 
     .YrangeAdd "0.0", "0.0" 
     .ZrangeAdd "0.0", "0.0" 
     .SingleEnded "False" 
     .WaveguideMonitor "False" 
     .Create 
End With

'@ pick face

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Pick.PickFaceFromId "component1/component1:copper", "3"

'@ define port: 2

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Port 
     .Reset 
     .PortNumber "2" 
     .Label "L1-2" 
     .Folder "" 
     .NumberOfModes "1" 
     .AdjustPolarization "False" 
     .PolarizationAngle "0.0" 
     .ReferencePlaneDistance "0" 
     .TextSize "50" 
     .TextMaxLimit "0" 
     .Coordinates "Picks" 
     .Orientation "positive" 
     .PortOnBound "False" 
     .ClipPickedPortToBound "False" 
     .Xrange "-9994.5", "-9650.5" 
     .Yrange "3436.16", "3436.16" 
     .Zrange "1023.9852800032", "1058.9852800032" 
     .XrangeAdd "0.0", "0.0" 
     .YrangeAdd "0.0", "0.0" 
     .ZrangeAdd "0.0", "0.0" 
     .SingleEnded "False" 
     .WaveguideMonitor "False" 
     .Create 
End With

'@ rename port: 1 to: 1

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Port.RenameLabel "1", "L1-1"

'@ pick face

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Pick.PickFaceFromId "component1/component1:copper", "41"

'@ define port: 3

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Port 
     .Reset 
     .PortNumber "3" 
     .Label "L2-1" 
     .Folder "" 
     .NumberOfModes "1" 
     .AdjustPolarization "False" 
     .PolarizationAngle "0.0" 
     .ReferencePlaneDistance "0" 
     .TextSize "50" 
     .TextMaxLimit "0" 
     .Coordinates "Picks" 
     .Orientation "positive" 
     .PortOnBound "False" 
     .ClipPickedPortToBound "False" 
     .Xrange "-7296.35588", "-6948.64412" 
     .Yrange "-1688.26", "-1688.26" 
     .Zrange "1023.9852800032", "1058.9852800032" 
     .XrangeAdd "0.0", "0.0" 
     .YrangeAdd "0.0", "0.0" 
     .ZrangeAdd "0.0", "0.0" 
     .SingleEnded "False" 
     .WaveguideMonitor "False" 
     .Create 
End With

'@ pick face

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Pick.PickFaceFromId "component1/component1:copper", "39"

'@ define port: 4

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Port 
     .Reset 
     .PortNumber "4" 
     .Label "L2-2" 
     .Folder "" 
     .NumberOfModes "1" 
     .AdjustPolarization "False" 
     .PolarizationAngle "0.0" 
     .ReferencePlaneDistance "0" 
     .TextSize "50" 
     .TextMaxLimit "0" 
     .Coordinates "Picks" 
     .Orientation "positive" 
     .PortOnBound "False" 
     .ClipPickedPortToBound "False" 
     .Xrange "-7296.35588", "-6948.64412" 
     .Yrange "-82.210000000004", "-82.210000000004" 
     .Zrange "1023.9852800032", "1058.9852800032" 
     .XrangeAdd "0.0", "0.0" 
     .YrangeAdd "0.0", "0.0" 
     .ZrangeAdd "0.0", "0.0" 
     .SingleEnded "False" 
     .WaveguideMonitor "False" 
     .Create 
End With

'@ define monitor: e-field (f=1)

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Monitor 
     .Reset 
     .Name "e-field (f=1)" 
     .Dimension "Volume" 
     .Domain "Frequency" 
     .FieldType "Efield" 
     .MonitorValue "1" 
     .UseSubvolume "False" 
     .Coordinates "Structure" 
     .SetSubvolume "-1.104e+04", "-5920", "-7038.44", "6564.76", "0", "1058.9852800032" 
     .SetSubvolumeOffset "0.0", "0.0", "0.0", "0.0", "0.0", "0.0" 
     .Create 
End With

'@ define monitor: e-field (f=3)

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Monitor 
     .Reset 
     .Name "e-field (f=3)" 
     .Dimension "Volume" 
     .Domain "Frequency" 
     .FieldType "Efield" 
     .MonitorValue "3" 
     .UseSubvolume "False" 
     .Coordinates "Structure" 
     .SetSubvolume "-1.104e+04", "-5920", "-7038.44", "6564.76", "0", "1058.9852800032" 
     .SetSubvolumeOffset "0.0", "0.0", "0.0", "0.0", "0.0", "0.0" 
     .Create 
End With

'@ define monitor: e-field (f=7)

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Monitor 
     .Reset 
     .Name "e-field (f=7)" 
     .Dimension "Volume" 
     .Domain "Frequency" 
     .FieldType "Efield" 
     .MonitorValue "7" 
     .UseSubvolume "False" 
     .Coordinates "Structure" 
     .SetSubvolume "-1.104e+04", "-5920", "-7038.44", "6564.76", "0", "1058.9852800032" 
     .SetSubvolumeOffset "0.0", "0.0", "0.0", "0.0", "0.0", "0.0" 
     .Create 
End With

'@ define monitor: e-field (f=14)

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Monitor 
     .Reset 
     .Name "e-field (f=14)" 
     .Dimension "Volume" 
     .Domain "Frequency" 
     .FieldType "Efield" 
     .MonitorValue "14" 
     .UseSubvolume "False" 
     .Coordinates "Structure" 
     .SetSubvolume "-1.104e+04", "-5920", "-7038.44", "6564.76", "0", "1058.9852800032" 
     .SetSubvolumeOffset "0.0", "0.0", "0.0", "0.0", "0.0", "0.0" 
     .Create 
End With

'@ define monitor: h-field (f=1)

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Monitor 
     .Reset 
     .Name "h-field (f=1)" 
     .Dimension "Volume" 
     .Domain "Frequency" 
     .FieldType "Hfield" 
     .MonitorValue "1" 
     .UseSubvolume "False" 
     .Coordinates "Structure" 
     .SetSubvolume "-1.104e+04", "-5920", "-7038.44", "6564.76", "0", "1058.9852800032" 
     .SetSubvolumeOffset "0.0", "0.0", "0.0", "0.0", "0.0", "0.0" 
     .Create 
End With

'@ define monitor: h-field (f=3)

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Monitor 
     .Reset 
     .Name "h-field (f=3)" 
     .Dimension "Volume" 
     .Domain "Frequency" 
     .FieldType "Hfield" 
     .MonitorValue "3" 
     .UseSubvolume "False" 
     .Coordinates "Structure" 
     .SetSubvolume "-1.104e+04", "-5920", "-7038.44", "6564.76", "0", "1058.9852800032" 
     .SetSubvolumeOffset "0.0", "0.0", "0.0", "0.0", "0.0", "0.0" 
     .Create 
End With

'@ define monitor: h-field (f=7)

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Monitor 
     .Reset 
     .Name "h-field (f=7)" 
     .Dimension "Volume" 
     .Domain "Frequency" 
     .FieldType "Hfield" 
     .MonitorValue "7" 
     .UseSubvolume "False" 
     .Coordinates "Structure" 
     .SetSubvolume "-1.104e+04", "-5920", "-7038.44", "6564.76", "0", "1058.9852800032" 
     .SetSubvolumeOffset "0.0", "0.0", "0.0", "0.0", "0.0", "0.0" 
     .Create 
End With

'@ define monitor: h-field (f=14)

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Monitor 
     .Reset 
     .Name "h-field (f=14)" 
     .Dimension "Volume" 
     .Domain "Frequency" 
     .FieldType "Hfield" 
     .MonitorValue "14" 
     .UseSubvolume "False" 
     .Coordinates "Structure" 
     .SetSubvolume "-1.104e+04", "-5920", "-7038.44", "6564.76", "0", "1058.9852800032" 
     .SetSubvolumeOffset "0.0", "0.0", "0.0", "0.0", "0.0", "0.0" 
     .Create 
End With

'@ split shape: component1/component1:copper

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Solid.SplitShape "copper", "component1/component1"

'@ transform: translate component1/component1:copper_1

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Transform 
     .Reset 
     .Name "component1/component1:copper_1" 
     .Vector "0", "1000", "0" 
     .UsePickedPoints "False" 
     .InvertPickedPoints "False" 
     .MultipleObjects "False" 
     .GroupObjects "False" 
     .Repetitions "1" 
     .MultipleSelection "False" 
     .Transform "Shape", "Translate" 
End With

'@ transform: translate component1/component1:copper_1

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Transform 
     .Reset 
     .Name "component1/component1:copper_1" 
     .Vector "0", "-200", "0" 
     .UsePickedPoints "False" 
     .InvertPickedPoints "False" 
     .MultipleObjects "False" 
     .GroupObjects "False" 
     .Repetitions "1" 
     .MultipleSelection "False" 
     .Transform "Shape", "Translate" 
End With

'@ delete port: port3

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Port.Delete "3"

'@ delete port: port4

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Port.Delete "4"

'@ pick face

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Pick.PickFaceFromId "component1/component1:copper_1", "41"

'@ define port: 3

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Port 
     .Reset 
     .PortNumber "3" 
     .Label "L2-1" 
     .Folder "" 
     .NumberOfModes "1" 
     .AdjustPolarization "False" 
     .PolarizationAngle "0.0" 
     .ReferencePlaneDistance "0" 
     .TextSize "50" 
     .TextMaxLimit "0" 
     .Coordinates "Picks" 
     .Orientation "positive" 
     .PortOnBound "False" 
     .ClipPickedPortToBound "False" 
     .Xrange "-7296.35588", "-6948.64412" 
     .Yrange "-888.26", "-888.26" 
     .Zrange "1023.9852800032", "1058.9852800032" 
     .XrangeAdd "0.0", "0.0" 
     .YrangeAdd "0.0", "0.0" 
     .ZrangeAdd "0.0", "0.0" 
     .SingleEnded "False" 
     .WaveguideMonitor "False" 
     .Create 
End With

'@ pick face

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Pick.PickFaceFromId "component1/component1:copper_1", "39"

'@ define port: 4

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Port 
     .Reset 
     .PortNumber "4" 
     .Label "L2-4" 
     .Folder "" 
     .NumberOfModes "1" 
     .AdjustPolarization "False" 
     .PolarizationAngle "0.0" 
     .ReferencePlaneDistance "0" 
     .TextSize "50" 
     .TextMaxLimit "0" 
     .Coordinates "Picks" 
     .Orientation "positive" 
     .PortOnBound "False" 
     .ClipPickedPortToBound "False" 
     .Xrange "-7296.35588", "-6948.64412" 
     .Yrange "717.79", "717.79" 
     .Zrange "1023.9852800032", "1058.9852800032" 
     .XrangeAdd "0.0", "0.0" 
     .YrangeAdd "0.0", "0.0" 
     .ZrangeAdd "0.0", "0.0" 
     .SingleEnded "False" 
     .WaveguideMonitor "False" 
     .Create 
End With

'@ define frequency domain solver parameters

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Mesh.SetCreator "High Frequency" 
With FDSolver
     .Reset 
     .SetMethod "Tetrahedral", "Fast reduced order model" 
     .OrderTet "Second" 
     .OrderSrf "First" 
     .Stimulation "All", "All" 
     .ResetExcitationList 
     .AutoNormImpedance "True" 
     .NormingImpedance "50" 
     .ModesOnly "False" 
     .ConsiderPortLossesTet "True" 
     .SetShieldAllPorts "True" 
     .AccuracyHex "1e-6" 
     .AccuracyTet "1e-5" 
     .AccuracySrf "1e-3" 
     .LimitIterations "False" 
     .MaxIterations "0" 
     .SetCalcBlockExcitationsInParallel "True", "True", "" 
     .StoreAllResults "False" 
     .StoreResultsInCache "False" 
     .UseHelmholtzEquation "True" 
     .LowFrequencyStabilization "True" 
     .Type "Direct" 
     .MeshAdaptionHex "False" 
     .MeshAdaptionTet "True" 
     .AcceleratedRestart "True" 
     .FreqDistAdaptMode "Distributed" 
     .NewIterativeSolver "True" 
     .TDCompatibleMaterials "False" 
     .ExtrudeOpenBC "False" 
     .SetOpenBCTypeHex "Default" 
     .SetOpenBCTypeTet "Default" 
     .AddMonitorSamples "True" 
     .CalcStatBField "False" 
     .CalcPowerLoss "True" 
     .CalcPowerLossPerComponent "False" 
     .StoreSolutionCoefficients "True" 
     .UseDoublePrecision "False" 
     .UseDoublePrecision_ML "True" 
     .MixedOrderSrf "False" 
     .MixedOrderTet "False" 
     .PreconditionerAccuracyIntEq "0.15" 
     .MLFMMAccuracy "Default" 
     .MinMLFMMBoxSize "0.3" 
     .UseCFIEForCPECIntEq "True" 
     .UseFastRCSSweepIntEq "false" 
     .UseSensitivityAnalysis "False" 
     .RemoveAllStopCriteria "Hex"
     .AddStopCriterion "All S-Parameters", "0.01", "2", "Hex", "True"
     .AddStopCriterion "Reflection S-Parameters", "0.01", "2", "Hex", "False"
     .AddStopCriterion "Transmission S-Parameters", "0.01", "2", "Hex", "False"
     .RemoveAllStopCriteria "Tet"
     .AddStopCriterion "All S-Parameters", "0.01", "2", "Tet", "True"
     .AddStopCriterion "Reflection S-Parameters", "0.01", "2", "Tet", "False"
     .AddStopCriterion "Transmission S-Parameters", "0.01", "2", "Tet", "False"
     .AddStopCriterion "All Probes", "0.05", "2", "Tet", "True"
     .RemoveAllStopCriteria "Srf"
     .AddStopCriterion "All S-Parameters", "0.01", "2", "Srf", "True"
     .AddStopCriterion "Reflection S-Parameters", "0.01", "2", "Srf", "False"
     .AddStopCriterion "Transmission S-Parameters", "0.01", "2", "Srf", "False"
     .SweepMinimumSamples "3" 
     .SetNumberOfResultDataSamples "5001" 
     .SetResultDataSamplingMode "Automatic" 
     .SweepWeightEvanescent "1.0" 
     .AccuracyROM "1e-4" 
     .AddSampleInterval "", "", "1", "Automatic", "True" 
     .AddSampleInterval "", "", "", "Automatic", "False" 
     .SetUseFastResonantForSweepTet "True" 
     .MPIParallelization "False"
     .UseDistributedComputing "False"
     .NetworkComputingStrategy "RunRemote"
     .NetworkComputingJobCount "3"
     .UseParallelization "True"
     .MaxCPUs "96"
     .MaximumNumberOfCPUDevices "2"
End With
With IESolver
     .Reset 
     .UseFastFrequencySweep "True" 
     .UseIEGroundPlane "False" 
     .SetRealGroundMaterialName "" 
     .CalcFarFieldInRealGround "False" 
     .RealGroundModelType "Auto" 
     .PreconditionerType "Auto" 
     .ExtendThinWireModelByWireNubs "False" 
End With
With IESolver
     .SetFMMFFCalcStopLevel "0" 
     .SetFMMFFCalcNumInterpPoints "6" 
     .UseFMMFarfieldCalc "True" 
     .SetCFIEAlpha "0.500000" 
     .LowFrequencyStabilization "False" 
     .LowFrequencyStabilizationML "True" 
     .Multilayer "False" 
     .SetiMoMACC_I "0.0001" 
     .SetiMoMACC_M "0.0001" 
     .DeembedExternalPorts "True" 
     .SetOpenBC_XY "True" 
     .OldRCSSweepDefintion "False" 
     .SetAccuracySetting "Custom" 
     .CalculateSParaforFieldsources "True" 
     .ModeTrackingCMA "True" 
     .NumberOfModesCMA "3" 
     .StartFrequencyCMA "-1.0" 
     .SetAccuracySettingCMA "Default" 
     .FrequencySamplesCMA "0" 
     .SetMemSettingCMA "Auto" 
End With

'@ modify port: 1

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Port 
     .Reset 
     .LoadContentForModify "1" 
     .Label "L1-1" 
     .Folder "" 
     .NumberOfModes "1" 
     .AdjustPolarization "False" 
     .PolarizationAngle "0.0" 
     .ReferencePlaneDistance "0" 
     .TextSize "50" 
     .TextMaxLimit "1" 
     .Coordinates "Picks" 
     .Orientation "positive" 
     .PortOnBound "False" 
     .ClipPickedPortToBound "False" 
     .Xrange "-9994.5", "-9650.5" 
     .Yrange "-4033.8399999999997", "-4033.8399999999997" 
     .Zrange "1023.98528", "1058.9852799999999" 
     .XrangeAdd "1.0", "1.0" 
     .YrangeAdd "0.0", "0.0" 
     .ZrangeAdd "1.0", "1.0" 
     .SingleEnded "False" 
     .Shield "none" 
     .WaveguideMonitor "False" 
     .Modify 
End With

'@ modify port: 2

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Port 
     .Reset 
     .LoadContentForModify "2" 
     .Label "L1-2" 
     .Folder "" 
     .NumberOfModes "1" 
     .AdjustPolarization "False" 
     .PolarizationAngle "0.0" 
     .ReferencePlaneDistance "0" 
     .TextSize "50" 
     .TextMaxLimit "0" 
     .Coordinates "Picks" 
     .Orientation "positive" 
     .PortOnBound "False" 
     .ClipPickedPortToBound "False" 
     .Xrange "-9994.5", "-9650.5" 
     .Yrange "3436.1599999999999", "3436.1599999999999" 
     .Zrange "1023.98528", "1058.9852799999999" 
     .XrangeAdd "1", "1" 
     .YrangeAdd "0.0", "0.0" 
     .ZrangeAdd "1", "1" 
     .SingleEnded "False" 
     .Shield "none" 
     .WaveguideMonitor "False" 
     .Modify 
End With

'@ modify port: 3

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Port 
     .Reset 
     .LoadContentForModify "3" 
     .Label "L2-1" 
     .Folder "" 
     .NumberOfModes "1" 
     .AdjustPolarization "False" 
     .PolarizationAngle "0.0" 
     .ReferencePlaneDistance "0" 
     .TextSize "50" 
     .TextMaxLimit "0" 
     .Coordinates "Picks" 
     .Orientation "positive" 
     .PortOnBound "False" 
     .ClipPickedPortToBound "False" 
     .Xrange "-7296.3558800000001", "-6948.6441199999999" 
     .Yrange "-888.25999999999999", "-888.25999999999999" 
     .Zrange "1023.98528", "1058.9852799999999" 
     .XrangeAdd "1", "1" 
     .YrangeAdd "0.0", "0.0" 
     .ZrangeAdd "1", "1" 
     .SingleEnded "False" 
     .Shield "none" 
     .WaveguideMonitor "False" 
     .Modify 
End With

'@ modify port: 4

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Port 
     .Reset 
     .LoadContentForModify "4" 
     .Label "L2-4" 
     .Folder "" 
     .NumberOfModes "1" 
     .AdjustPolarization "False" 
     .PolarizationAngle "0.0" 
     .ReferencePlaneDistance "0" 
     .TextSize "50" 
     .TextMaxLimit "0" 
     .Coordinates "Picks" 
     .Orientation "positive" 
     .PortOnBound "False" 
     .ClipPickedPortToBound "False" 
     .Xrange "-7296.3558800000001", "-6948.6441199999999" 
     .Yrange "717.78999999999996", "717.78999999999996" 
     .Zrange "1023.98528", "1058.9852799999999" 
     .XrangeAdd "1", "1" 
     .YrangeAdd "0.0", "0.0" 
     .ZrangeAdd "1", "1" 
     .SingleEnded "False" 
     .Shield "none" 
     .WaveguideMonitor "False" 
     .Modify 
End With

'@ delete ports

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Port.Delete "3" 
Port.Delete "4"

'@ pick face

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Pick.PickFaceFromId "component1/component1:copper_1", "41"

'@ define plane wave properties

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With PlaneWave
     .Reset 
     .Normal "0", "0", "1" 
     .EVector "1", "0", "0" 
     .Polarization "Linear" 
     .ReferenceFrequency "15.5" 
     .PhaseDifference "-90.0" 
     .CircularDirection "Left" 
     .AxialRatio "0.0" 
     .SetUserDecouplingPlane "False" 
     .Store
End With

'@ define port: 3

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Port 
     .Reset 
     .PortNumber "3" 
     .Label "L2-2" 
     .Folder "" 
     .NumberOfModes "1" 
     .AdjustPolarization "False" 
     .PolarizationAngle "0.0" 
     .ReferencePlaneDistance "0" 
     .TextSize "50" 
     .TextMaxLimit "0" 
     .Coordinates "Picks" 
     .Orientation "positive" 
     .PortOnBound "False" 
     .ClipPickedPortToBound "False" 
     .Xrange "-7296.35588", "-6948.64412" 
     .Yrange "-888.26", "-888.26" 
     .Zrange "1023.9852800032", "1058.9852800032" 
     .XrangeAdd "1", "1" 
     .YrangeAdd "0.0", "0.0" 
     .ZrangeAdd "1", "1" 
     .SingleEnded "False" 
     .WaveguideMonitor "False" 
     .Create 
End With

'@ pick face

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Pick.PickFaceFromId "component1/component1:copper_1", "39"

'@ define port: 4

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Port 
     .Reset 
     .PortNumber "4" 
     .Label "" 
     .Folder "" 
     .NumberOfModes "1" 
     .AdjustPolarization "False" 
     .PolarizationAngle "0.0" 
     .ReferencePlaneDistance "0" 
     .TextSize "50" 
     .TextMaxLimit "0" 
     .Coordinates "Picks" 
     .Orientation "positive" 
     .PortOnBound "False" 
     .ClipPickedPortToBound "False" 
     .Xrange "-7296.35588", "-6948.64412" 
     .Yrange "717.79", "717.79" 
     .Zrange "1023.9852800032", "1058.9852800032" 
     .XrangeAdd "1", "1" 
     .YrangeAdd "0.0", "0.0" 
     .ZrangeAdd "1", "1" 
     .SingleEnded "False" 
     .WaveguideMonitor "False" 
     .Create 
End With

'@ modify port: 4

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Port 
     .Reset 
     .LoadContentForModify "4" 
     .Label "L2-2" 
     .Folder "" 
     .NumberOfModes "1" 
     .AdjustPolarization "False" 
     .PolarizationAngle "0.0" 
     .ReferencePlaneDistance "0" 
     .TextSize "50" 
     .TextMaxLimit "0" 
     .Coordinates "Picks" 
     .Orientation "positive" 
     .PortOnBound "False" 
     .ClipPickedPortToBound "False" 
     .Xrange "-7296.3558800000001", "-6948.6441199999999" 
     .Yrange "717.78999999999996", "717.78999999999996" 
     .Zrange "1023.98528", "1057.9852799999999" 
     .XrangeAdd "1", "1" 
     .YrangeAdd "0.0", "0.0" 
     .ZrangeAdd "1", "1" 
     .SingleEnded "False" 
     .Shield "none" 
     .WaveguideMonitor "False" 
     .Modify 
End With

'@ define frequency domain solver parameters

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Mesh.SetCreator "High Frequency" 
With FDSolver
     .Reset 
     .SetMethod "Tetrahedral", "Fast reduced order model" 
     .OrderTet "Second" 
     .OrderSrf "First" 
     .Stimulation "List", "List" 
     .ResetExcitationList 
     .AddToExcitationList "1", "1" 
     .AddToExcitationList "2", "1" 
     .AddToExcitationList "3", "1" 
     .AddToExcitationList "4", "1" 
     .AutoNormImpedance "True" 
     .NormingImpedance "50" 
     .ModesOnly "False" 
     .ConsiderPortLossesTet "True" 
     .SetShieldAllPorts "True" 
     .AccuracyHex "1e-6" 
     .AccuracyTet "1e-5" 
     .AccuracySrf "1e-3" 
     .LimitIterations "False" 
     .MaxIterations "0" 
     .SetCalcBlockExcitationsInParallel "True", "True", "" 
     .StoreAllResults "False" 
     .StoreResultsInCache "False" 
     .UseHelmholtzEquation "True" 
     .LowFrequencyStabilization "True" 
     .Type "Direct" 
     .MeshAdaptionHex "False" 
     .MeshAdaptionTet "True" 
     .AcceleratedRestart "True" 
     .FreqDistAdaptMode "Distributed" 
     .NewIterativeSolver "True" 
     .TDCompatibleMaterials "False" 
     .ExtrudeOpenBC "False" 
     .SetOpenBCTypeHex "Default" 
     .SetOpenBCTypeTet "Default" 
     .AddMonitorSamples "True" 
     .CalcStatBField "False" 
     .CalcPowerLoss "True" 
     .CalcPowerLossPerComponent "False" 
     .StoreSolutionCoefficients "True" 
     .UseDoublePrecision "False" 
     .UseDoublePrecision_ML "True" 
     .MixedOrderSrf "False" 
     .MixedOrderTet "False" 
     .PreconditionerAccuracyIntEq "0.15" 
     .MLFMMAccuracy "Default" 
     .MinMLFMMBoxSize "0.3" 
     .UseCFIEForCPECIntEq "True" 
     .UseFastRCSSweepIntEq "false" 
     .UseSensitivityAnalysis "False" 
     .RemoveAllStopCriteria "Hex"
     .AddStopCriterion "All S-Parameters", "0.01", "2", "Hex", "True"
     .AddStopCriterion "Reflection S-Parameters", "0.01", "2", "Hex", "False"
     .AddStopCriterion "Transmission S-Parameters", "0.01", "2", "Hex", "False"
     .RemoveAllStopCriteria "Tet"
     .AddStopCriterion "All S-Parameters", "0.01", "2", "Tet", "True"
     .AddStopCriterion "Reflection S-Parameters", "0.01", "2", "Tet", "False"
     .AddStopCriterion "Transmission S-Parameters", "0.01", "2", "Tet", "False"
     .AddStopCriterion "All Probes", "0.05", "2", "Tet", "True"
     .RemoveAllStopCriteria "Srf"
     .AddStopCriterion "All S-Parameters", "0.01", "2", "Srf", "True"
     .AddStopCriterion "Reflection S-Parameters", "0.01", "2", "Srf", "False"
     .AddStopCriterion "Transmission S-Parameters", "0.01", "2", "Srf", "False"
     .SweepMinimumSamples "3" 
     .SetNumberOfResultDataSamples "5001" 
     .SetResultDataSamplingMode "Automatic" 
     .SweepWeightEvanescent "1.0" 
     .AccuracyROM "1e-4" 
     .AddSampleInterval "", "", "1", "Automatic", "True" 
     .AddSampleInterval "", "", "", "Automatic", "False" 
     .SetUseFastResonantForSweepTet "True" 
     .MPIParallelization "False"
     .UseDistributedComputing "False"
     .NetworkComputingStrategy "RunRemote"
     .NetworkComputingJobCount "3"
     .UseParallelization "True"
     .MaxCPUs "96"
     .MaximumNumberOfCPUDevices "2"
End With
With IESolver
     .Reset 
     .UseFastFrequencySweep "True" 
     .UseIEGroundPlane "False" 
     .SetRealGroundMaterialName "" 
     .CalcFarFieldInRealGround "False" 
     .RealGroundModelType "Auto" 
     .PreconditionerType "Auto" 
     .ExtendThinWireModelByWireNubs "False" 
End With
With IESolver
     .SetFMMFFCalcStopLevel "0" 
     .SetFMMFFCalcNumInterpPoints "6" 
     .UseFMMFarfieldCalc "True" 
     .SetCFIEAlpha "0.500000" 
     .LowFrequencyStabilization "False" 
     .LowFrequencyStabilizationML "True" 
     .Multilayer "False" 
     .SetiMoMACC_I "0.0001" 
     .SetiMoMACC_M "0.0001" 
     .DeembedExternalPorts "True" 
     .SetOpenBC_XY "True" 
     .OldRCSSweepDefintion "False" 
     .SetAccuracySetting "Custom" 
     .CalculateSParaforFieldsources "True" 
     .ModeTrackingCMA "True" 
     .NumberOfModesCMA "3" 
     .StartFrequencyCMA "-1.0" 
     .SetAccuracySettingCMA "Default" 
     .FrequencySamplesCMA "0" 
     .SetMemSettingCMA "Auto" 
End With

'@ pick edge

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Pick.PickEdgeFromId "component1/component1:copper_2", "7", "7" 


'@ define distance dimension

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Dimension
    .Reset
    .CreationType "picks"
    .SetType "Distance"
    .SetID "8"
    .SetOrientation "Smart Mode"
    .SetDistance "1456.959839"
    .SetViewVector "0.017802", "0.932041", "-0.361914"
    .SetConnectedElement1 "component1/component1:copper_2"
    .SetConnectedElement2 "component1/component1:copper_2"
    .Create
End With

Pick.ClearAllPicks


'@ pick edge

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Pick.PickEdgeFromId "component1/component1:copper_2", "8", "8" 


'@ define distance dimension

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Dimension
    .Reset
    .CreationType "picks"
    .SetType "Distance"
    .SetID "9"
    .SetOrientation "Smart Mode"
    .SetDistance "123.256172"
    .SetViewVector "0.017804", "0.932050", "-0.361893"
    .SetConnectedElement1 "component1/component1:copper_2"
    .SetConnectedElement2 "component1/component1:copper_2"
    .Create
End With

Pick.ClearAllPicks


'@ delete dimension 9

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Dimension
    .RemoveDimension "9"
End With


'@ pick edge

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Pick.PickEdgeFromId "component1/component1:copper_2", "8", "8" 


'@ define distance dimension

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Dimension
    .Reset
    .CreationType "picks"
    .SetType "Distance"
    .SetID "10"
    .SetOrientation "Smart Mode"
    .SetDistance "491.692749"
    .SetViewVector "-0.459132", "0.508900", "-0.728161"
    .SetConnectedElement1 "component1/component1:copper_2"
    .SetConnectedElement2 "component1/component1:copper_2"
    .Create
End With

Pick.ClearAllPicks


'@ pick edge

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Pick.PickEdgeFromId "component1/component1:copper_1", "80", "56" 


'@ define distance dimension

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Dimension
    .Reset
    .CreationType "picks"
    .SetType "Distance"
    .SetID "11"
    .SetOrientation "Smart Mode"
    .SetDistance "745.032654"
    .SetViewVector "-0.459140", "0.508889", "-0.728164"
    .SetConnectedElement1 "component1/component1:copper_1"
    .SetConnectedElement2 "component1/component1:copper_1"
    .Create
End With

Pick.ClearAllPicks


'@ pick edge

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
Pick.PickEdgeFromId "component1/component1:copper_1", "77", "53" 


'@ define distance dimension

'[VERSION]2018.0|27.0.2|20171026[/VERSION]
With Dimension
    .Reset
    .CreationType "picks"
    .SetType "Distance"
    .SetID "12"
    .SetOrientation "Smart Mode"
    .SetDistance "-795.522400"
    .SetViewVector "-0.459140", "0.508889", "-0.728164"
    .SetConnectedElement1 "component1/component1:copper_1"
    .SetConnectedElement2 "component1/component1:copper_1"
    .Create
End With

Pick.ClearAllPicks


