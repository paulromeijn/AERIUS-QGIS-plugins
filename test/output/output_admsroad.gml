<?xml version="1.0" encoding="utf-8" standalone="yes"?>
<imaer:FeatureCollectionCalculator xmlns:gml="http://www.opengis.net/gml/3.2" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://imaer.aerius.nl/6.0 http://imaer.aerius.nl/6.0/IMAER.xsd" xmlns:imaer="http://imaer.aerius.nl/6.0" xmlns:xlink="http://www.w3.org/1999/xlink" gml:id="NL.IMAER.Collection">
    <imaer:featureMember>
        <imaer:ADMSRoad sectorId="3100" roadType="Urb" gml:id="ES.33" roadAreaType="Sco">
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
                        <gml:LineString srsName="urn:ogc:def:crs:EPSG::27700" gml:id="ES.33.CURVE">
                            <gml:posList srsDimension="2">311279 723504.3 311262.5 723349.6</gml:posList>
                        </gml:LineString>
                    </imaer:GM_Curve>
                </imaer:EmissionSourceGeometry>
            </imaer:geometry>
            <imaer:vehicles>
                <imaer:StandardVehicle vehicleType="Bus">
                    <imaer:vehiclesPerTimeUnit>1000</imaer:vehiclesPerTimeUnit>
                    <imaer:timeUnit>DAY</imaer:timeUnit>
                    <imaer:stagnationFactor>0.0</imaer:stagnationFactor>
                    <imaer:maximumSpeed>50</imaer:maximumSpeed>
                    <imaer:strictEnforcement>false</imaer:strictEnforcement>
                </imaer:StandardVehicle>
            </imaer:vehicles>
            <imaer:vehicles>
                <imaer:CustomVehicle>
                    <imaer:vehiclesPerTimeUnit>1000</imaer:vehiclesPerTimeUnit>
                    <imaer:timeUnit>DAY</imaer:timeUnit>
                    <imaer:description>Test test ...</imaer:description>
                    <imaer:emissionFactor>
                        <imaer:Emission substance="NOX">
                            <imaer:value>111</imaer:value>
                        </imaer:Emission>
                    </imaer:emissionFactor>
                </imaer:CustomVehicle>
            </imaer:vehicles>
            <imaer:width>8</imaer:width>
            <imaer:elevation>2</imaer:elevation>
            <imaer:gradient>0.5</imaer:gradient>
            <imaer:coverage>0</imaer:coverage>
            <imaer:barrierLeft>
                <imaer:ADMSRoadSideBarrier>
                    <imaer:barrierType>BRICK_WALL</imaer:barrierType>
                    <imaer:distance>5</imaer:distance>
                    <imaer:averageHeight>7</imaer:averageHeight>
                    <imaer:maximumHeight>10</imaer:maximumHeight>
                    <imaer:minimumHeight>3</imaer:minimumHeight>
                    <imaer:porosity>5</imaer:porosity>
                </imaer:ADMSRoadSideBarrier>
            </imaer:barrierLeft>
        </imaer:ADMSRoad>
    </imaer:featureMember>
</imaer:FeatureCollectionCalculator>
