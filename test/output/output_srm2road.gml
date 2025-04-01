<?xml version="1.0" encoding="utf-8" standalone="yes"?>
<imaer:FeatureCollectionCalculator xmlns:gml="http://www.opengis.net/gml/3.2" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://imaer.aerius.nl/6.0 http://imaer.aerius.nl/6.0/IMAER.xsd" xmlns:imaer="http://imaer.aerius.nl/6.0" xmlns:xlink="http://www.w3.org/1999/xlink" gml:id="NL.IMAER.Collection">
    <imaer:featureMember>
        <imaer:SRM2Road sectorId="3100" roadType="FREEWAY" gml:id="ES.33" roadAreaType="NL">
            <imaer:identifier>
                <imaer:NEN3610ID>
                    <imaer:namespace>NL.IMAER</imaer:namespace>
                    <imaer:localId>ES.33</imaer:localId>
                </imaer:NEN3610ID>
            </imaer:identifier>
            <imaer:label>testlabel</imaer:label>
            <imaer:geometry>
                <imaer:EmissionSourceGeometry>
                    <imaer:GM_Curve>
                        <gml:LineString srsName="urn:ogc:def:crs:EPSG::28992" gml:id="ES.33.CURVE">
                            <gml:posList srsDimension="2">1 0 2 1 3 0</gml:posList>
                        </gml:LineString>
                    </imaer:GM_Curve>
                </imaer:EmissionSourceGeometry>
            </imaer:geometry>
            <imaer:vehicles>
                <imaer:StandardVehicle vehicleType="Bus">
                    <imaer:vehiclesPerTimeUnit>333</imaer:vehiclesPerTimeUnit>
                    <imaer:timeUnit>DAY</imaer:timeUnit>
                    <imaer:stagnationFactor>0.0</imaer:stagnationFactor>
                    <imaer:maximumSpeed>33</imaer:maximumSpeed>
                    <imaer:strictEnforcement>false</imaer:strictEnforcement>
                </imaer:StandardVehicle>
            </imaer:vehicles>
        </imaer:SRM2Road>
    </imaer:featureMember>
</imaer:FeatureCollectionCalculator>
