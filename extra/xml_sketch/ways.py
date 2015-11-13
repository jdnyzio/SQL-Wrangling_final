#!/usr/bin/env python
# -*- coding: utf-8 -*-

import csv
import codecs
import re
# import xml.etree.ElementTree as ET
import xml.etree.cElementTree as ET
# import lxml.etree as ET

#import cerberus

OSM_PATH = "albuquerque_new-mexico.osm"

WAYS_PATH = "ways.csv"

LOWER = re.compile(r'^([a-z]|_)*$')
LOWER_COLON = re.compile(r'^([a-z]|_)*:([a-z]|_)*$')
PROBLEMCHARS = re.compile(r'[=\+/&<>;\'"\?%#$@\,\. \t\r\n]')

ATTRIBS = [
    "id",
    "lat",
    "lon",
    "version",
    "changeset",
    "timestamp",
    "user",
    "uid"
]

CSV_FIELDS = {
    'ways': ('id', 'version', 'timestamp', 'changeset', 'uid', 'user')
}

SCHEMA = {
    'way': {
        'type': 'dict',
        'schema': {
            'id': {'required': True, 'type': 'integer', 'coerce': int},
            'version': {'type': 'string'},
            'timestamp': {'type': 'string'},
            'changeset': {'type': 'integer', 'coerce': int},
            'uid': {'type': 'integer', 'coerce': int},
            'user': {'type': 'string'},
        }
    }
}

class UnicodeDictWriter(csv.DictWriter, object):
    """
    Extend DictWriter class to handle Unicode input
    """

    def writerow(self, row):
        super(UnicodeDictWriter, self).writerow({
            k: (v.encode('utf-8') if isinstance(v, unicode) else v) for k, v in row.iteritems()
        })

    def writerows(self, rows):
        for row in rows:
            self.writerow(row)

def get_element(osm_file, tags=('way')):
    """Yield element if it is the right type of tag
    """
    context = ET.iterparse(osm_file, events=('start', 'end'))
    _, root = next(context)
    for event, elem in context:
        if event == 'end' and elem.tag in tags:
            yield elem
            root.clear()

def shape_element(element, attrib_list=ATTRIBS, problem_chars=PROBLEMCHARS,
                  default_tag_type='regular'):
    """Clean and shape node or way XML element to Python dict
       Student will fill this in
   """
    attributes = {}
    tags = []
    element_id = element.get('id')
    attributes['id'] = element_id

    # Attributes
    for key in attrib_list:
        attributes[key] = element.get(key)

    # Tags
    for tag in element.iter('tag'):
        key = tag.get('k')
        value = tag.get('v')
        key_type = default_tag_type

        if problem_chars.search(key):
            continue
        elif LOWER_COLON.search(key):
            key_type, key = key.split(':')[:2]  # Ignore chars after second colon
            if key_type == 'addr' and key == 'street':
                value = clean_street_name(value)

        tags.append({
            'id': element_id,
            'type': key_type,
            'key': key,
            'value': value
        })


    if element.tag == 'way':
        way_nodes = []
        for i, nd_tag in enumerate(element.iter('nd')):
            way_nodes.append({
                'id': element_id,
                'node_id': nd_tag.get('ref'),
                'position': i
            })

        return {'way': attributes, 'way_nodes': way_nodes, 'way_tags': tags}


def process_map(file_in):
    """Iteratively process each XML element and write to csv(s)
    """
    with codecs.open(WAYS_PATH, 'w') as ways_file:
         
        ways_writer = UnicodeDictWriter(ways_file, CSV_FIELDS['ways'])

        ways_writer.writeheader()

        for element in get_element(file_in, tags=('way')):
            el = shape_element(element)
           
            if element.tag == 'way':
                ways_writer.writerow(el['way'])

if __name__ == '__main__':
    # Note: Validation is ~ 10X slower. Consider using a smaller sample of
    # the map when validating.
    process_map(OSM_PATH)
