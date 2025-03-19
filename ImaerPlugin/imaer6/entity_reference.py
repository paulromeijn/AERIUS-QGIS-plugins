class CriticalLevel():

    def __init__(self, result_type=None, substance=None, value=None):
        self.result_type = result_type
        self.substance = substance
        self.value = value

    def __str__(self):
        return f'CriticalLevel[{self.result_type}, {self.substance}, {self.value}]'

    def is_valid(self):
        return self.result_type is not None \
            and self.substance is not None \
            and self.value is not None

    def to_xml_elem(self, doc):
        result = doc.createElement('imaer:CriticalLevel')
        result.setAttribute('resultType', self.result_type)
        result.setAttribute('substance', self.substance)

        value_elem = doc.createElement('imaer:value')
        value_elem.appendChild(doc.createTextNode(str(self.value)))
        result.appendChild(value_elem)

        return result

    def from_xml_reader(self, xml_reader):
        if not xml_reader.name() == 'CriticalLevel':
            return None
        attributes = xml_reader.attributes()
        if attributes.hasAttribute('resultType'):
            self.result_type = attributes.value('resultType')
        if attributes.hasAttribute('substance'):
            self.substance = attributes.value('substance')
        xml_reader.readNextStartElement()
        if xml_reader.name() == 'value':
            xml_reader.readNext()
            text = xml_reader.text()
            self.value = float(text)


class EntityReference():

    def __init__(self, entity_type=None, description=None, critical_levels=None):
        self.entity_type = entity_type
        self.description = description
        self.critical_levels = critical_levels or []

    def __str__(self):
        return f'EntityReference[{self.entity_type}, {len(self.critical_levels)}]'

    def to_xml_elem(self, doc):
        result = doc.createElement('imaer:EntityReference')

        elem = doc.createElement('imaer:entityType')
        elem.appendChild(doc.createTextNode(self.entity_type))
        result.appendChild(elem)

        if self.description is not None:
            elem = doc.createElement('imaer:description')
            elem.appendChild(doc.createTextNode(self.description))
            result.appendChild(elem)

        for critical_level in self.critical_levels:
            elem = doc.createElement('imaer:criticalLevel')
            elem.appendChild(critical_level.to_xml_elem(doc))
            result.appendChild(elem)

        return result

    def from_xml_reader(self, xml_reader):
        start_tag_name = xml_reader.name()

        if start_tag_name not in ['ReceptorPoint', 'SubPoint', 'CalculationPoint', 'NcaCustomCalculationPoint']:
            return

        attributes = xml_reader.attributes()
        if attributes.hasAttribute('receptorPointId'):
            self.local_id = attributes.value('receptorPointId')
        if attributes.hasAttribute('subPointId'):
            self.sub_point_id = attributes.value('subPointId')
        while not (xml_reader.name() == start_tag_name and xml_reader.isEndElement()):
            xml_reader.readNextStartElement()

            if xml_reader.name() == 'identifier':
                xml_reader.readNextStartElement()
                if xml_reader.name() == 'NEN3610ID':
                    identifier = Nen3610Id()
                    identifier.from_xml_reader(xml_reader)
                    # print(identifier)
                    if identifier.is_valid():
                        self.identifier = identifier

            if xml_reader.name() == 'GM_Point':
                xml_reader.readNextStartElement()
                if xml_reader.name() == 'Point':
                    geom = GmlPoint()
                    geom.from_xml_reader(xml_reader)
                    # print(geom)
                    if geom.is_valid():
                        self.gm_point = geom

            if xml_reader.name() == 'representation':
                xml_reader.readNextStartElement()
                if xml_reader.name() == 'Polygon':
                    geom = GmlPolygon()
                    geom.from_xml_reader(xml_reader)
                    # print(geom)
                    if geom.is_valid():
                        self.representation = geom

            if xml_reader.name() == 'CalculationResult':
                result = CalculationResult()
                result.from_xml_reader(xml_reader)
                if result.is_valid():
                    self.results.append(result)

            if xml_reader.name() == 'edgeEffect' and xml_reader.isStartElement():
                xml_reader.readNext()
                text = xml_reader.text().strip()
                if text == 'true':
                    self.edge_effect = 1
                else:
                    self.edge_effect = 0

            if xml_reader.name() == 'level' and xml_reader.isStartElement():
                xml_reader.readNext()
                text = xml_reader.text().strip()
                self.level = int(text)

            if xml_reader.name() == 'label' and xml_reader.isStartElement():
                xml_reader.readNext()
                self.label = xml_reader.text()

            if xml_reader.name() == 'height' and xml_reader.isStartElement():
                xml_reader.readNext()
                text = xml_reader.text().strip()
                self.height = float(text)

            if xml_reader.name() == 'assessmentCategory' and xml_reader.isStartElement():
                xml_reader.readNext()
                self.assessment_category = xml_reader.text()

            if xml_reader.name() == 'roadLocalFractionNO2' and xml_reader.isStartElement():
                xml_reader.readNext()
                text = xml_reader.text().strip()
                self.road_local_fraction_no2 = float(text)

    def get_results_dict(self):
        results_dict = {}
        for result in self.results:
            if result.is_valid():
                key = '{}_{}'.format(result.result_type.lower(), result.substance.lower())
                results_dict[key] = result.value
        return results_dict
