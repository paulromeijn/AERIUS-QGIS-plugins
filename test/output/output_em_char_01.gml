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
                <imaer:EmissionSourceCharacteristics>
                    <imaer:heatContent>
                        <imaer:SpecifiedHeatContent>
                            <imaer:value>12.5</imaer:value>
                        </imaer:SpecifiedHeatContent>
                    </imaer:heatContent>
                    <imaer:emissionHeight>2.4</imaer:emissionHeight>
                    <imaer:spread>3</imaer:spread>
                    <imaer:timeVaryingProfile>
                        <imaer:StandardTimeVaryingProfile>
                            <imaer:standardType>LIGHT_DUTY_VEHICLES</imaer:standardType>
                        </imaer:StandardTimeVaryingProfile>
                    </imaer:timeVaryingProfile>
                </imaer:EmissionSourceCharacteristics>
            </imaer:emissionSourceCharacteristics>
            <imaer:geometry>
                <imaer:EmissionSourceGeometry>
                    <imaer:GM_Curve>
                        <gml:LineString srsName="urn:ogc:def:crs:EPSG::28992" gml:id="ES.1234.CURVE">
                            <gml:posList srsDimension="2">1 0 2 1 3 0</gml:posList>
                        </gml:LineString>
                    </imaer:GM_Curve>
                </imaer:EmissionSourceGeometry>
            </imaer:geometry>
            <imaer:emission>
                <imaer:Emission substance="NH3">
                    <imaer:value>4.3</imaer:value>
                </imaer:Emission>
            </imaer:emission>
            <imaer:emission>
                <imaer:Emission substance="NOX">
                    <imaer:value>4.4</imaer:value>
                </imaer:Emission>
            </imaer:emission>
        </imaer:EmissionSource>
    </imaer:featureMember>
</imaer:FeatureCollectionCalculator>
