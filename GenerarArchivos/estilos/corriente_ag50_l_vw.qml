<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis simplifyLocal="1" styleCategories="AllStyleCategories" minScale="1e+08" hasScaleBasedVisibilityFlag="0" simplifyAlgorithm="0" readOnly="0" version="3.10.1-A Coruña" maxScale="0" simplifyDrawingTol="1" labelsEnabled="0" simplifyMaxScale="1" simplifyDrawingHints="1">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <renderer-v2 type="singleSymbol" symbollevels="0" enableorderby="0" forceraster="0">
    <symbols>
      <symbol type="line" name="0" alpha="1" clip_to_extent="1" force_rhr="0">
        <layer class="SimpleLine" locked="0" pass="0" enabled="1">
          <prop k="capstyle" v="square"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="119,163,217,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="0.26"/>
          <prop k="line_width_unit" v="MM"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="ring_filter" v="0"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
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
      <fontProperties style="" description="MS Shell Dlg 2,7.8,-1,5,50,0,0,0,0,0"/>
      <attribute label="" field="" color="#000000"/>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings linePlacementFlags="18" zIndex="0" obstacle="0" showAll="1" dist="0" placement="2" priority="0">
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
    <checkConfiguration/>
  </geometryOptions>
  <fieldConfiguration>
    <field name="objectid">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="geografico">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="nombre">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="condicion">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="codigo">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="cali_repr">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="carta">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="identifica">
      <editWidget type="Range">
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
    <alias field="geografico" name="" index="1"/>
    <alias field="nombre" name="" index="2"/>
    <alias field="condicion" name="" index="3"/>
    <alias field="codigo" name="" index="4"/>
    <alias field="cali_repr" name="" index="5"/>
    <alias field="carta" name="" index="6"/>
    <alias field="identifica" name="" index="7"/>
    <alias field="gdb_geomattr_data" name="" index="8"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default field="objectid" expression="" applyOnUpdate="0"/>
    <default field="geografico" expression="" applyOnUpdate="0"/>
    <default field="nombre" expression="" applyOnUpdate="0"/>
    <default field="condicion" expression="" applyOnUpdate="0"/>
    <default field="codigo" expression="" applyOnUpdate="0"/>
    <default field="cali_repr" expression="" applyOnUpdate="0"/>
    <default field="carta" expression="" applyOnUpdate="0"/>
    <default field="identifica" expression="" applyOnUpdate="0"/>
    <default field="gdb_geomattr_data" expression="" applyOnUpdate="0"/>
  </defaults>
  <constraints>
    <constraint field="objectid" unique_strength="1" constraints="3" notnull_strength="1" exp_strength="0"/>
    <constraint field="geografico" unique_strength="0" constraints="0" notnull_strength="0" exp_strength="0"/>
    <constraint field="nombre" unique_strength="0" constraints="0" notnull_strength="0" exp_strength="0"/>
    <constraint field="condicion" unique_strength="0" constraints="0" notnull_strength="0" exp_strength="0"/>
    <constraint field="codigo" unique_strength="0" constraints="0" notnull_strength="0" exp_strength="0"/>
    <constraint field="cali_repr" unique_strength="0" constraints="0" notnull_strength="0" exp_strength="0"/>
    <constraint field="carta" unique_strength="0" constraints="0" notnull_strength="0" exp_strength="0"/>
    <constraint field="identifica" unique_strength="0" constraints="0" notnull_strength="0" exp_strength="0"/>
    <constraint field="gdb_geomattr_data" unique_strength="0" constraints="0" notnull_strength="0" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint field="objectid" exp="" desc=""/>
    <constraint field="geografico" exp="" desc=""/>
    <constraint field="nombre" exp="" desc=""/>
    <constraint field="condicion" exp="" desc=""/>
    <constraint field="codigo" exp="" desc=""/>
    <constraint field="cali_repr" exp="" desc=""/>
    <constraint field="carta" exp="" desc=""/>
    <constraint field="identifica" exp="" desc=""/>
    <constraint field="gdb_geomattr_data" exp="" desc=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig sortOrder="0" actionWidgetStyle="dropDown" sortExpression="">
    <columns>
      <column type="field" name="objectid" hidden="0" width="-1"/>
      <column type="field" name="geografico" hidden="0" width="-1"/>
      <column type="field" name="nombre" hidden="0" width="-1"/>
      <column type="field" name="condicion" hidden="0" width="-1"/>
      <column type="field" name="codigo" hidden="0" width="-1"/>
      <column type="field" name="cali_repr" hidden="0" width="-1"/>
      <column type="field" name="carta" hidden="0" width="-1"/>
      <column type="field" name="identifica" hidden="0" width="-1"/>
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
    <field name="cali_repr" editable="1"/>
    <field name="carta" editable="1"/>
    <field name="codigo" editable="1"/>
    <field name="condicion" editable="1"/>
    <field name="gdb_geomattr_data" editable="1"/>
    <field name="geografico" editable="1"/>
    <field name="identifica" editable="1"/>
    <field name="nombre" editable="1"/>
    <field name="objectid" editable="1"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="cali_repr"/>
    <field labelOnTop="0" name="carta"/>
    <field labelOnTop="0" name="codigo"/>
    <field labelOnTop="0" name="condicion"/>
    <field labelOnTop="0" name="gdb_geomattr_data"/>
    <field labelOnTop="0" name="geografico"/>
    <field labelOnTop="0" name="identifica"/>
    <field labelOnTop="0" name="nombre"/>
    <field labelOnTop="0" name="objectid"/>
  </labelOnTop>
  <widgets/>
  <previewExpression>nombre</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>1</layerGeometryType>
</qgis>
