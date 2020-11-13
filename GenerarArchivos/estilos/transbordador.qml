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
          <prop k="line_color" v="250,250,250,250"/>
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
      <fontProperties style="" description="MS Shell Dlg 2,8.25,-1,5,50,0,0,0,0,0"/>
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
    <field name="id_trans">
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
    <field name="tipo">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="escala_vis">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="velocidad">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="union_ini">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="union_fin">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="longitud">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="fecha_act">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="calirepr">
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
    <alias field="id_trans" name="" index="1"/>
    <alias field="nombre" name="" index="2"/>
    <alias field="tipo" name="" index="3"/>
    <alias field="escala_vis" name="" index="4"/>
    <alias field="velocidad" name="" index="5"/>
    <alias field="union_ini" name="" index="6"/>
    <alias field="union_fin" name="" index="7"/>
    <alias field="longitud" name="" index="8"/>
    <alias field="fecha_act" name="" index="9"/>
    <alias field="calirepr" name="" index="10"/>
    <alias field="gdb_geomattr_data" name="" index="11"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default field="objectid" expression="" applyOnUpdate="0"/>
    <default field="id_trans" expression="" applyOnUpdate="0"/>
    <default field="nombre" expression="" applyOnUpdate="0"/>
    <default field="tipo" expression="" applyOnUpdate="0"/>
    <default field="escala_vis" expression="" applyOnUpdate="0"/>
    <default field="velocidad" expression="" applyOnUpdate="0"/>
    <default field="union_ini" expression="" applyOnUpdate="0"/>
    <default field="union_fin" expression="" applyOnUpdate="0"/>
    <default field="longitud" expression="" applyOnUpdate="0"/>
    <default field="fecha_act" expression="" applyOnUpdate="0"/>
    <default field="calirepr" expression="" applyOnUpdate="0"/>
    <default field="gdb_geomattr_data" expression="" applyOnUpdate="0"/>
  </defaults>
  <constraints>
    <constraint field="objectid" unique_strength="1" constraints="3" notnull_strength="1" exp_strength="0"/>
    <constraint field="id_trans" unique_strength="0" constraints="0" notnull_strength="0" exp_strength="0"/>
    <constraint field="nombre" unique_strength="0" constraints="0" notnull_strength="0" exp_strength="0"/>
    <constraint field="tipo" unique_strength="0" constraints="0" notnull_strength="0" exp_strength="0"/>
    <constraint field="escala_vis" unique_strength="0" constraints="0" notnull_strength="0" exp_strength="0"/>
    <constraint field="velocidad" unique_strength="0" constraints="0" notnull_strength="0" exp_strength="0"/>
    <constraint field="union_ini" unique_strength="0" constraints="0" notnull_strength="0" exp_strength="0"/>
    <constraint field="union_fin" unique_strength="0" constraints="0" notnull_strength="0" exp_strength="0"/>
    <constraint field="longitud" unique_strength="0" constraints="0" notnull_strength="0" exp_strength="0"/>
    <constraint field="fecha_act" unique_strength="0" constraints="0" notnull_strength="0" exp_strength="0"/>
    <constraint field="calirepr" unique_strength="0" constraints="0" notnull_strength="0" exp_strength="0"/>
    <constraint field="gdb_geomattr_data" unique_strength="0" constraints="0" notnull_strength="0" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint field="objectid" exp="" desc=""/>
    <constraint field="id_trans" exp="" desc=""/>
    <constraint field="nombre" exp="" desc=""/>
    <constraint field="tipo" exp="" desc=""/>
    <constraint field="escala_vis" exp="" desc=""/>
    <constraint field="velocidad" exp="" desc=""/>
    <constraint field="union_ini" exp="" desc=""/>
    <constraint field="union_fin" exp="" desc=""/>
    <constraint field="longitud" exp="" desc=""/>
    <constraint field="fecha_act" exp="" desc=""/>
    <constraint field="calirepr" exp="" desc=""/>
    <constraint field="gdb_geomattr_data" exp="" desc=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig sortOrder="0" actionWidgetStyle="dropDown" sortExpression="">
    <columns>
      <column type="field" name="objectid" hidden="0" width="-1"/>
      <column type="field" name="id_trans" hidden="0" width="-1"/>
      <column type="field" name="nombre" hidden="0" width="-1"/>
      <column type="field" name="tipo" hidden="0" width="-1"/>
      <column type="field" name="escala_vis" hidden="0" width="-1"/>
      <column type="field" name="velocidad" hidden="0" width="-1"/>
      <column type="field" name="union_ini" hidden="0" width="-1"/>
      <column type="field" name="union_fin" hidden="0" width="-1"/>
      <column type="field" name="longitud" hidden="0" width="-1"/>
      <column type="field" name="fecha_act" hidden="0" width="-1"/>
      <column type="field" name="calirepr" hidden="0" width="-1"/>
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
    <field name="calirepr" editable="1"/>
    <field name="escala_vis" editable="1"/>
    <field name="fecha_act" editable="1"/>
    <field name="gdb_geomattr_data" editable="1"/>
    <field name="id_trans" editable="1"/>
    <field name="longitud" editable="1"/>
    <field name="nombre" editable="1"/>
    <field name="objectid" editable="1"/>
    <field name="tipo" editable="1"/>
    <field name="union_fin" editable="1"/>
    <field name="union_ini" editable="1"/>
    <field name="velocidad" editable="1"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="calirepr"/>
    <field labelOnTop="0" name="escala_vis"/>
    <field labelOnTop="0" name="fecha_act"/>
    <field labelOnTop="0" name="gdb_geomattr_data"/>
    <field labelOnTop="0" name="id_trans"/>
    <field labelOnTop="0" name="longitud"/>
    <field labelOnTop="0" name="nombre"/>
    <field labelOnTop="0" name="objectid"/>
    <field labelOnTop="0" name="tipo"/>
    <field labelOnTop="0" name="union_fin"/>
    <field labelOnTop="0" name="union_ini"/>
    <field labelOnTop="0" name="velocidad"/>
  </labelOnTop>
  <widgets/>
  <previewExpression>nombre</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>1</layerGeometryType>
</qgis>
