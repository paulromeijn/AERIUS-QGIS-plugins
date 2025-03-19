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
        elem.appendChild(doc.createTextNode(str(self.entity_type)))
        result.appendChild(elem)

        if self.description is not None:
            elem = doc.createElement('imaer:description')
            elem.appendChild(doc.createTextNode(str(self.description)))
            result.appendChild(elem)

        for critical_level in self.critical_levels:
            elem = doc.createElement('imaer:criticalLevel')
            elem.appendChild(critical_level.to_xml_elem(doc))
            result.appendChild(elem)

        return result
