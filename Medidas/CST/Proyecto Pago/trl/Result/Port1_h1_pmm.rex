<?xml version="1.0" encoding="UTF-8"?>
<MetaResultFile creator="FE Port mode solver" version="20170330">
  <SpecialMaterials>
    <Background type="NORMAL"/>
  </SpecialMaterials>
  <SimulationProperties dB_Amplitude="20" encoded_unit="&amp;U:A^1.:m^-1" fieldname="&lt;name missing&gt;" fieldtype="H-Field" frequency="0" label="Port1 h1"/>
  <MetaGeometryFile filename="" lod="1"/>
  <ResultGroups num_steps="2">
    <Frame index="0" characteristic="15.5" tfo="Port1_h1_pmm_15.5.tfo">
      <FieldResultFile filename="Port1_h1(#0000).sct" meshname="Port1.slim" type="sct"/>
    </Frame>
    <Frame index="1" characteristic="1" tfo="Port1_h1_pmm_1.tfo">
      <FieldResultFile filename="Port1_h1(#0004).sct" meshname="Port1.slim" type="sct"/>
    </Frame>
  </ResultGroups>
  <ResultDataType complex="1" timedomain="0" vector="1"/>
  <SimulationDomain min="0 0 0" max="0 0 0"/>
  <PlotSettings Clipping="Always on" Plot="1" ignore_symmetry="0" deformation="0">
    <Plane normal="0 1 1.224646852585e-16" distance="-4033.840087891"/>
  </PlotSettings>
  <Source type="SOLVER"/>
  <Units>
    <Quantity factor="1e-06" name="Length" unit="um"/>
    <Quantity factor="1e-09" name="Time" unit="ns"/>
    <Quantity factor="1000000000" name="Frequency" unit="GHz"/>
    <Quantity factor="1" name="Temperature" unit="K"/>
  </Units>
</MetaResultFile>
