<?xml version="1.0" encoding="utf-8" standalone="yes"?>
<imaer:FeatureCollectionCalculator xmlns:gml="http://www.opengis.net/gml/3.2" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://imaer.aerius.nl/6.0 http://imaer.aerius.nl/6.0/IMAER.xsd" xmlns:imaer="http://imaer.aerius.nl/6.0" xmlns:xlink="http://www.w3.org/1999/xlink" gml:id="NL.IMAER.Collection">
    <imaer:featureMember>
        <imaer:Building gml:id="Building.123">
            <imaer:identifier>
                <imaer:NEN3610ID>
                    <imaer:namespace>NL.IMAER</imaer:namespace>
                    <imaer:localId>Building.123</imaer:localId>
                </imaer:NEN3610ID>
            </imaer:identifier>
            <imaer:label>building no. 123</imaer:label>
            <imaer:height>12.3</imaer:height>
            <imaer:geometry>
                <imaer:BuildingGeometry>
                    <imaer:GM_Point>
                        <gml:Point srsName="urn:ogc:def:crs:EPSG::28992" gml:id="Building.123.POINT">
                            <gml:pos srsDimension="2">148458 411641</gml:pos>
                        </gml:Point>
                    </imaer:GM_Point>
                </imaer:BuildingGeometry>
            </imaer:geometry>
            <imaer:diameter>1.23</imaer:diameter>
        </imaer:Building>
    </imaer:featureMember>
    <imaer:featureMember>
        <imaer:Building gml:id="Building.555">
            <imaer:identifier>
                <imaer:NEN3610ID>
                    <imaer:namespace>NL.IMAER</imaer:namespace>
                    <imaer:localId>Building.555</imaer:localId>
                </imaer:NEN3610ID>
            </imaer:identifier>
            <imaer:label>building no. 555</imaer:label>
            <imaer:height>55.5</imaer:height>
            <imaer:geometry>
                <imaer:BuildingGeometry>
                    <imaer:GM_Surface>
                        <gml:Polygon srsName="urn:ogc:def:crs:EPSG::28992" gml:id="Building.555.SURFACE">
                            <gml:exterior>
                                <gml:LinearRing>
                                    <gml:posList srsDimension="2">1 0 2 1 3 0 2 -1 1 0</gml:posList>
                                </gml:LinearRing>
                            </gml:exterior>
                        </gml:Polygon>
                    </imaer:GM_Surface>
                </imaer:BuildingGeometry>
            </imaer:geometry>
            <imaer:diameter>55</imaer:diameter>
        </imaer:Building>
    </imaer:featureMember>
</imaer:FeatureCollectionCalculator>
