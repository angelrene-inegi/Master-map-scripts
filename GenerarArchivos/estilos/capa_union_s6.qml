<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis simplifyLocal="1" styleCategories="AllStyleCategories" minScale="1e+08" hasScaleBasedVisibilityFlag="0" simplifyAlgorithm="0" readOnly="0" version="3.10.1-A Coruña" maxScale="0" simplifyDrawingTol="1" labelsEnabled="0" simplifyMaxScale="1" simplifyDrawingHints="1">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <renderer-v2 type="singleSymbol" symbollevels="0" enableorderby="0" forceraster="0">
    <symbols>
      <symbol type="fill" name="0" alpha="0.268" clip_to_extent="1" force_rhr="0">
        <layer class="GradientFill" locked="0" pass="0" enabled="1">
          <prop k="angle" v="0"/>
          <prop k="color" v="47,110,158,255"/>
          <prop k="color1" v="0,0,255,255"/>
          <prop k="color2" v="0,255,0,255"/>
          <prop k="color_type" v="0"/>
          <prop k="coordinate_mode" v="0"/>
          <prop k="discrete" v="0"/>
          <prop k="gradient_color2" v="72,169,242,255"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="rampType" v="gradient"/>
          <prop k="reference_point1" v="0.5,0"/>
          <prop k="reference_point1_iscentroid" v="0"/>
          <prop k="reference_point2" v="0.5,1"/>
          <prop k="reference_point2_iscentroid" v="0"/>
          <prop k="spread" v="0"/>
          <prop k="type" v="0"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
        <layer class="SimpleFill" locked="0" pass="0" enabled="1">
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="55,126,184,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="31,74,86,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.6"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="style" v="no"/>
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
    <property value="descripcio" key="dualview/previewExpressions"/>
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
    <field name="cve_union">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="descripcio">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="area">
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
    <alias field="cve_union" name="" index="1"/>
    <alias field="descripcio" name="" index="2"/>
    <alias field="area" name="" index="3"/>
    <alias field="gdb_geomattr_data" name="" index="4"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default field="objectid" expression="" applyOnUpdate="0"/>
    <default field="cve_union" expression="" applyOnUpdate="0"/>
    <default field="descripcio" expression="" applyOnUpdate="0"/>
    <default field="area" expression="" applyOnUpdate="0"/>
    <default field="gdb_geomattr_data" expression="" applyOnUpdate="0"/>
  </defaults>
  <constraints>
    <constraint field="objectid" unique_strength="1" constraints="3" notnull_strength="1" exp_strength="0"/>
    <constraint field="cve_union" unique_strength="0" constraints="0" notnull_strength="0" exp_strength="0"/>
    <constraint field="descripcio" unique_strength="0" constraints="0" notnull_strength="0" exp_strength="0"/>
    <constraint field="area" unique_strength="0" constraints="0" notnull_strength="0" exp_strength="0"/>
    <constraint field="gdb_geomattr_data" unique_strength="0" constraints="0" notnull_strength="0" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint field="objectid" exp="" desc=""/>
    <constraint field="cve_union" exp="" desc=""/>
    <constraint field="descripcio" exp="" desc=""/>
    <constraint field="area" exp="" desc=""/>
    <constraint field="gdb_geomattr_data" exp="" desc=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig sortOrder="0" actionWidgetStyle="dropDown" sortExpression="">
    <columns>
      <column type="field" name="objectid" hidden="0" width="-1"/>
      <column type="field" name="cve_union" hidden="0" width="-1"/>
      <column type="field" name="descripcio" hidden="0" width="-1"/>
      <column type="field" name="area" hidden="0" width="-1"/>
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
    <field name="area" editable="1"/>
    <field name="cve_union" editable="1"/>
    <field name="descripcio" editable="1"/>
    <field name="gdb_geomattr_data" editable="1"/>
    <field name="objectid" editable="1"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="area"/>
    <field labelOnTop="0" name="cve_union"/>
    <field labelOnTop="0" name="descripcio"/>
    <field labelOnTop="0" name="gdb_geomattr_data"/>
    <field labelOnTop="0" name="objectid"/>
  </labelOnTop>
  <widgets/>
  <previewExpression>descripcio</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>2</layerGeometryType>
</qgis>
