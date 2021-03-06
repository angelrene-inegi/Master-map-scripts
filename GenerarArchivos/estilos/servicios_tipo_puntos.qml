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
          <prop k="color" v="125,139,143,255"/>
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
  <customproperties/>
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
    <field name="cvegeo">
      <editWidget type="">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="cve_ent">
      <editWidget type="">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="cve_mun">
      <editWidget type="">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="cve_loc">
      <editWidget type="">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="cve_ageb">
      <editWidget type="">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="cve_mza">
      <editWidget type="">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="condicion">
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
    <field name="nomserv">
      <editWidget type="">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="tipo">
      <editWidget type="">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="cve_serv">
      <editWidget type="">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="ambito">
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
    <alias field="cvegeo" name="" index="1"/>
    <alias field="cve_ent" name="" index="2"/>
    <alias field="cve_mun" name="" index="3"/>
    <alias field="cve_loc" name="" index="4"/>
    <alias field="cve_ageb" name="" index="5"/>
    <alias field="cve_mza" name="" index="6"/>
    <alias field="condicion" name="" index="7"/>
    <alias field="geografico" name="" index="8"/>
    <alias field="nomserv" name="" index="9"/>
    <alias field="tipo" name="" index="10"/>
    <alias field="cve_serv" name="" index="11"/>
    <alias field="ambito" name="" index="12"/>
    <alias field="gdb_geomattr_data" name="" index="13"/>
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
    <default field="condicion" expression="" applyOnUpdate="0"/>
    <default field="geografico" expression="" applyOnUpdate="0"/>
    <default field="nomserv" expression="" applyOnUpdate="0"/>
    <default field="tipo" expression="" applyOnUpdate="0"/>
    <default field="cve_serv" expression="" applyOnUpdate="0"/>
    <default field="ambito" expression="" applyOnUpdate="0"/>
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
    <constraint field="condicion" unique_strength="0" constraints="0" notnull_strength="0" exp_strength="0"/>
    <constraint field="geografico" unique_strength="0" constraints="0" notnull_strength="0" exp_strength="0"/>
    <constraint field="nomserv" unique_strength="0" constraints="0" notnull_strength="0" exp_strength="0"/>
    <constraint field="tipo" unique_strength="0" constraints="0" notnull_strength="0" exp_strength="0"/>
    <constraint field="cve_serv" unique_strength="0" constraints="0" notnull_strength="0" exp_strength="0"/>
    <constraint field="ambito" unique_strength="0" constraints="0" notnull_strength="0" exp_strength="0"/>
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
    <constraint field="condicion" exp="" desc=""/>
    <constraint field="geografico" exp="" desc=""/>
    <constraint field="nomserv" exp="" desc=""/>
    <constraint field="tipo" exp="" desc=""/>
    <constraint field="cve_serv" exp="" desc=""/>
    <constraint field="ambito" exp="" desc=""/>
    <constraint field="gdb_geomattr_data" exp="" desc=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction value="{00000000-0000-0000-0000-000000000000}" key="Canvas"/>
  </attributeactions>
  <attributetableconfig sortOrder="0" actionWidgetStyle="dropDown" sortExpression="">
    <columns/>
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
  <previewExpression></previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>0</layerGeometryType>
</qgis>
