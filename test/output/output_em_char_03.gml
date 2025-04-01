<?xml version="1.0" encoding="utf-8" standalone="yes"?>
<imaer:FeatureCollectionCalculator xmlns:gml="http://www.opengis.net/gml/3.2" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://imaer.aerius.nl/6.0 http://imaer.aerius.nl/6.0/IMAER.xsd" xmlns:imaer="http://imaer.aerius.nl/6.0" xmlns:xlink="http://www.w3.org/1999/xlink" gml:id="NL.IMAER.Collection">
    <imaer:featureMember>
        <imaer:EmissionSource sectorId="9999" gml:id="ES.1234">
            <imaer:identifier>
                <imaer:NEN3610ID>
                    <imaer:namespace>NL.IMAER</imaer:namespace>
                    <imaer:localId>ES.1234</imaer:localId>
                </imaer:NEN3610ID>
            </imaer:identifier>
            <imaer:label>Bron 1234</imaer:label>
            <imaer:emissionSourceCharacteristics>
                <imaer:ADMSSourceCharacteristics>
                    <imaer:height>0.5</imaer:height>
                    <imaer:specificHeatCapacity>1012</imaer:specificHeatCapacity>
                    <imaer:sourceType>POINT</imaer:sourceType>
                    <imaer:diameter>0.01</imaer:diameter>
                    <imaer:buoyancyType>TEMPERATURE</imaer:buoyancyType>
                    <imaer:temperature>15</imaer:temperature>
                    <imaer:effluxType>VELOCITY</imaer:effluxType>
                    <imaer:verticalVelocity>15.0</imaer:verticalVelocity>
                    <imaer:hourlyVariation>
                        <imaer:StandardTimeVaryingProfile>
                            <imaer:standardType>LIGHT_DUTY_VEHICLES</imaer:standardType>
                        </imaer:StandardTimeVaryingProfile>
                    </imaer:hourlyVariation>
                    <imaer:monthlyVariation>
                        <imaer:StandardTimeVaryingProfile>
                            <imaer:standardType>LIGHT_DUTY_VEHICLES</imaer:standardType>
                        </imaer:StandardTimeVaryingProfile>
                    </imaer:monthlyVariation>
                </imaer:ADMSSourceCharacteristics>
            </imaer:emissionSourceCharacteristics>
            <imaer:geometry>
                <imaer:EmissionSourceGeometry>
                    <imaer:GM_Point>
                        <gml:Point srsName="urn:ogc:def:crs:EPSG::27700" gml:id="ES.1234.POINT">
                            <gml:pos srsDimension="2">311618 723548</gml:pos>
                        </gml:Point>
                    </imaer:GM_Point>
                </imaer:EmissionSourceGeometry>
            </imaer:geometry>
            <imaer:emission>
                <imaer:Emission substance="NH3">
                    <imaer:value>10</imaer:value>
                </imaer:Emission>
            </imaer:emission>
            <imaer:emission>
                <imaer:Emission substance="NOX">
                    <imaer:value>50</imaer:value>
                </imaer:Emission>
            </imaer:emission>
        </imaer:EmissionSource>
    </imaer:featureMember>
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
                    <imaer:GM_Surface>
                        <gml:Polygon srsName="urn:ogc:def:crs:EPSG::27700" gml:id="Building.123.SURFACE">
                            <gml:exterior>
                                <gml:LinearRing>
                                    <gml:posList srsDimension="2">311608 723548 311618 723558 311628 723548 311618 723538 311608 723548</gml:posList>
                                </gml:LinearRing>
                            </gml:exterior>
                        </gml:Polygon>
                    </imaer:GM_Surface>
                </imaer:BuildingGeometry>
            </imaer:geometry>
        </imaer:Building>
    </imaer:featureMember>
</imaer:FeatureCollectionCalculator>
