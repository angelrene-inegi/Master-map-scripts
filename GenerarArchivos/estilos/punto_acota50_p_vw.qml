<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis simplifyLocal="1" styleCategories="AllStyleCategories" minScale="1e+08" hasScaleBasedVisibilityFlag="0" simplifyAlgorithm="0" readOnly="0" version="3.10.1-A Coruña" maxScale="0" simplifyDrawingTol="1" labelsEnabled="0" simplifyMaxScale="1" simplifyDrawingHints="1">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <renderer-v2 type="singleSymbol" symbollevels="0" enableorderby="0" forceraster="0">
    <symbols>
      <symbol type="marker" name="0" alpha="1" clip_to_extent="1" force_rhr="0">
        <layer class="SimpleMarker" locked="0" pass="0" enabled="1">
          <prop k="angle" v="0"/>
          <prop k="color" v="229,182,54,255"/>
          <prop k="horizontal_anchor_point" v="1"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="name" v="circle"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="35,35,35,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0"/>
          <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="scale_method" v="diameter"/>
          <prop k="size" v="2"/>
          <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="size_unit" v="MM"/>
          <prop k="vertical_anchor_point" v="1"/>
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
    <property value="&quot;objectid&quot;" key="dualview/previewExpressions"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <geometryOptions removeDuplicateNodes="0" geometryPrecision="0">
    <activeChecks type="StringList">
      <Option type="QString" value=""/>
    </activeChecks>
    <checkConfiguration/>
  </geometryOptions>
  <fieldConfiguration>
    <field name="objectid">
      <editWidget type="">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="geografico">
      <editWidget type="">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="altura">
      <editWidget type="">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="codigo">
      <editWidget type="">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="cali_repr">
      <editWidget type="">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="carta">
      <editWidget type="">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="identifica">
      <editWidget type="">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="gdb_geomattr_data">
      <editWidget type="">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias field="objectid" name="" index="0"/>
    <alias field="geografico" name="" index="1"/>
    <alias field="altura" name="" index="2"/>
    <alias field="codigo" name="" index="3"/>
    <alias field="cali_repr" name="" index="4"/>
    <alias field="carta" name="" index="5"/>
    <alias field="identifica" name="" index="6"/>
    <alias field="gdb_geomattr_data" name="" index="7"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default field="objectid" expression="" applyOnUpdate="0"/>
    <default field="geografico" expression="" applyOnUpdate="0"/>
    <default field="altura" expression="" applyOnUpdate="0"/>
    <default field="codigo" expression="" applyOnUpdate="0"/>
    <default field="cali_repr" expression="" applyOnUpdate="0"/>
    <default field="carta" expression="" applyOnUpdate="0"/>
    <default field="identifica" expression="" applyOnUpdate="0"/>
    <default field="gdb_geomattr_data" expression="" applyOnUpdate="0"/>
  </defaults>
  <constraints>
    <constraint field="objectid" unique_strength="0" constraints="0" notnull_strength="0" exp_strength="0"/>
    <constraint field="geografico" unique_strength="0" constraints="0" notnull_strength="0" exp_strength="0"/>
    <constraint field="altura" unique_strength="0" constraints="0" notnull_strength="0" exp_strength="0"/>
    <constraint field="codigo" unique_strength="0" constraints="0" notnull_strength="0" exp_strength="0"/>
    <constraint field="cali_repr" unique_strength="0" constraints="0" notnull_strength="0" exp_strength="0"/>
    <constraint field="carta" unique_strength="0" constraints="0" notnull_strength="0" exp_strength="0"/>
    <constraint field="identifica" unique_strength="1" constraints="3" notnull_strength="1" exp_strength="0"/>
    <constraint field="gdb_geomattr_data" unique_strength="0" constraints="0" notnull_strength="0" exp_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint field="objectid" exp="" desc=""/>
    <constraint field="geografico" exp="" desc=""/>
    <constraint field="altura" exp="" desc=""/>
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
      <column type="field" name="geografico" hidden="0" width="333"/>
      <column type="field" name="altura" hidden="0" width="-1"/>
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
  <editforminitcode><![CDATA[]]></editforminitcode>
  <featformsuppress>0</featformsuppress>
  <editorlayout>generatedlayout</editorlayout>
  <editable/>
  <labelOnTop/>
  <widgets/>
  <previewExpression>"objectid"</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>0</layerGeometryType>
</qgis>
