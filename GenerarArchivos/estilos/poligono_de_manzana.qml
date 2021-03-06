<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis simplifyLocal="1" styleCategories="AllStyleCategories" minScale="1e+08" hasScaleBasedVisibilityFlag="0" simplifyAlgorithm="0" readOnly="0" version="3.10.1-A Coruña" maxScale="0" simplifyDrawingTol="1" labelsEnabled="0" simplifyMaxScale="1" simplifyDrawingHints="1">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <renderer-v2 type="singleSymbol" symbollevels="0" enableorderby="0" forceraster="0">
    <symbols>
      <symbol type="fill" name="0" alpha="0.3" clip_to_extent="1" force_rhr="0">
        <layer class="SimpleFill" locked="0" pass="0" enabled="1">
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="133,182,111,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="35,35,35,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.26"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="style" v="solid"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
    <rotation/>
    <sizescale/>
  </renderer-v2>
  <customproperties>
    <property value="0" key="embeddedWidgets/count"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer diagramType="Histogram" attributeLegend="1">
    <DiagramCategory width="15" maxScaleDenominator="1e+08" sizeScale="3x:0,0,0,0,0,0" lineSizeType="MM" diagramOrientation="Up" penColor="#000000" penAlpha="255" backgroundColor="#ffffff" rotationOffset="270" lineSizeScale="3x:0,0,0,0,0,0" opacity="1" enabled="0" backgroundAlpha="255" minimumSize="0" barWidth="5" penWidth="0" labelPlacementMethod="XHeight" height="15" scaleDependency="Area" scaleBasedVisibility="0" sizeType="MM" minScaleDenominator="0">
      <fontProperties style="" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0"/>
      <attribute label="" field="" color="#000000"/>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings linePlacementFlags="18" zIndex="0" obstacle="0" showAll="1" dist="0" placement="1" priority="0">
    <properties>
      <Option type="Map">
        <Option type="QString" value="" name="name"/>
        <Option name="properties"/>
        <Option type="QString" value="collection" name="type"/>
      </Option>
    </properties>
  </DiagramLayerSettings>
  <geometryOptions removeDuplicateNodes="0" geometryPrecision="0">
    <activeChecks/>
    <checkConfiguration type="Map">
      <Option type="Map" name="QgsGeometryGapCheck">
        <Option type="double" value="0" name="allowedGapsBuffer"/>
        <Option type="bool" value="false" name="allowedGapsEnabled"/>
        <Option type="QString" value="" name="allowedGapsLayer"/>
      </Option>
    </checkConfiguration>
  </geometryOptions>
  <fieldConfiguration>
    <field name="objectid">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="cvegeo">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="cve_ent">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="cve_mun">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="cve_loc">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="cve_ageb">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="cve_mza">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="ambito">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="tipomza">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="gdb_geomattr_data">
      <editWidget type="Binary">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias field="objectid" name="" index="0"/>
    <alias field="cvegeo" name="" index="1"/>
    <alias field="cve_ent" name="" index="2"/>
    <alias field="cve_mun" name="" index="3"/>
    <alias field="cve_loc" name="" index="4"/>
    <alias field="cve_ageb" name="" index="5"/>
    <alias field="cve_mza" name="" index="6"/>
    <alias field="ambito" name="" index="7"/>
    <alias field="tipomza" name="" index="8"/>
    <alias field="gdb_geomattr_data" name="" index="9"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default field="objectid" expression="" applyOnUpdate="0"/>
    <default field="cvegeo" expression="" applyOnUpdate="0"/>
    <default field="cve_ent" expression="" applyOnUpdate="0"/>
    <default field="cve_mun" expression="" applyOnUpdate="0"/>
    <default field="cve_loc" expression="" applyOnUpdate="0"/>
    <default field="cve_ageb" expression="" applyOnUpdate="0"/>
    <default field="cve_mza" expression="" applyOnUpdate="0"/>
    <default field="ambito" expression="" applyOnUpdate="0"/>
    <default field="tipomza" expression="" applyOnUpdate="0"/>
    <default field="gdb_geomattr_data" expression="" applyOnUpdate="0"/>
  </defaults>
  <constraints>
    <constraint field="objectid" unique_strength="1" constraints="3" notnull_strength="1" exp_strength="0"/>
    <constraint field="cvegeo" unique_strength="0" constraints="0" notnull_strength="0" exp_strength="0"/>
    <constraint field="cve_ent" unique_strength="0" constraints="0" notnull_strength="0" exp_strength="0"/>
    <constraint field="cve_mun" unique_strength="0" constraints="0" notnull_strength="0" exp_strength="0"/>
    <constraint field="cve_loc" unique_strength="0" constraints="0" notnull_strength="0" exp_strength="0"/>
    <constraint field="cve_ageb" unique_strength="0" constraints="0" notnull_strength="0" exp_strength="0"/>
    <constraint field="cve_mza" unique_strength="0" constraints="0" notnull_strength="0" exp_strength="0"/>
    <constraint field="ambito" unique_strength="0" constraints="0" notnull_strength="0" exp_strength="0"/>
    <constraint field="tipomza" unique_strength="0" constraints="0" notnull_strength="0" exp_strength="0"/>
    <constraint field="gdb_geomattr_data" unique_strength="0" constraints="0" notnull_strength="0" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint field="objectid" exp="" desc=""/>
    <constraint field="cvegeo" exp="" desc=""/>
    <constraint field="cve_ent" exp="" desc=""/>
    <constraint field="cve_mun" exp="" desc=""/>
    <constraint field="cve_loc" exp="" desc=""/>
    <constraint field="cve_ageb" exp="" desc=""/>
    <constraint field="cve_mza" exp="" desc=""/>
    <constraint field="ambito" exp="" desc=""/>
    <constraint field="tipomza" exp="" desc=""/>
    <constraint field="gdb_geomattr_data" exp="" desc=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig sortOrder="0" actionWidgetStyle="dropDown" sortExpression="">
    <columns>
      <column type="field" name="objectid" hidden="0" width="-1"/>
      <column type="field" name="cvegeo" hidden="0" width="-1"/>
      <column type="field" name="cve_ent" hidden="0" width="-1"/>
      <column type="field" name="cve_mun" hidden="0" width="-1"/>
      <column type="field" name="cve_loc" hidden="0" width="-1"/>
      <column type="field" name="cve_ageb" hidden="0" width="-1"/>
      <column type="field" name="cve_mza" hidden="0" width="-1"/>
      <column type="field" name="ambito" hidden="0" width="-1"/>
      <column type="field" name="tipomza" hidden="0" width="-1"/>
      <column type="field" name="gdb_geomattr_data" hidden="0" width="-1"/>
      <column type="actions" hidden="1" width="-1"/>
    </columns>
  </attributetableconfig>
  <conditionalstyles>
    <rowstyles/>
    <fieldstyles/>
  </conditionalstyles>
  <storedexpressions/>
  <editform tolerant="1"></editform>
  <editforminit/>
  <editforminitcodesource>0</editforminitcodesource>
  <editforminitfilepath></editforminitfilepath>
  <editforminitcode><![CDATA[# -*- codificación: utf-8 -*-
"""
Los formularios de QGIS pueden tener una función de Python que
es llamada cuando se abre el formulario.

Use esta función para añadir lógica extra a sus formularios.

Introduzca el nombre de la función en el campo
"Python Init function".
Sigue un ejemplo:
"""
from qgis.PyQt.QtWidgets import QWidget

def my_form_open(dialog, layer, feature):
	geom = feature.geometry()
	control = dialog.findChild(QWidget, "MyLineEdit")
]]></editforminitcode>
  <featformsuppress>0</featformsuppress>
  <editorlayout>generatedlayout</editorlayout>
  <editable>
    <field name="ambito" editable="1"/>
    <field name="cve_ageb" editable="1"/>
    <field name="cve_ent" editable="1"/>
    <field name="cve_loc" editable="1"/>
    <field name="cve_mun" editable="1"/>
    <field name="cve_mza" editable="1"/>
    <field name="cvegeo" editable="1"/>
    <field name="gdb_geomattr_data" editable="1"/>
    <field name="objectid" editable="1"/>
    <field name="tipomza" editable="1"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="ambito"/>
    <field labelOnTop="0" name="cve_ageb"/>
    <field labelOnTop="0" name="cve_ent"/>
    <field labelOnTop="0" name="cve_loc"/>
    <field labelOnTop="0" name="cve_mun"/>
    <field labelOnTop="0" name="cve_mza"/>
    <field labelOnTop="0" name="cvegeo"/>
    <field labelOnTop="0" name="gdb_geomattr_data"/>
    <field labelOnTop="0" name="objectid"/>
    <field labelOnTop="0" name="tipomza"/>
  </labelOnTop>
  <widgets/>
  <previewExpression>objectid</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>2</layerGeometryType>
</qgis>
