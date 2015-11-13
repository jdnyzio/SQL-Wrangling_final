#!/usr/bin/env python
# -*- coding: utf-8 -*-

import csv
import codecs
import re
# import xml.etree.ElementTree as ET
import xml.etree.cElementTree as ET
# import lxml.etree as ET

import cerberus

OSM_PATH = "albuquerque_new-mexico.osm"

NODES_PATH = "nodes.csv"
NODE_TAGS_PATH = "nodes_tags.csv"
WAYS_PATH = "ways.csv"
WAY_NODES_PATH = "ways_nodes.csv"
WAY_TAGS_PATH = "ways_tags.csv"

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
    'nodes': ('id', 'lat', 'lon', 'version', 'changeset',
              'timestamp', 'user', 'uid'),
    'node_tags': ('id', 'type', 'key', 'value'),
    'ways': ('id', 'version', 'timestamp', 'changeset', 'uid', 'user'),
    'way_tags': ('id', 'type', 'key', 'value'),
    'way_nodes': ('id', 'node_id', 'position')
}
SCHEMA = {
    'node': {
        'type': 'dict',
        'schema': {
            'id': {'required': True, 'type': 'integer', 'coerce': int},
            'lat': {'required': True, 'type': 'float', 'coerce': float},
            'lon': {'required': True, 'type': 'float', 'coerce': float},
            'user': {'type': 'string'},
            'uid': {'type': 'integer', 'coerce': int},
            'version': {'type': 'string'},
            'changeset': {'type': 'integer', 'coerce': int},
            'timestamp': {'type': 'string'}
        }
    },
    'node_tags': {
        'type': 'list',
        'schema': {
            'type': 'dict',
            'schema': {
                'id': {'required': True, 'type': 'integer', 'coerce': int},
                'key': {'required': True, 'type': 'string'},
                'value': {'required': True, 'type': 'string'},
                'type': {'type': 'string'}
            }
        }
    },
    'way': {
        'type': 'dict',
        'schema': {
            'id': {'required': True, 'type': 'integer', 'coerce': int},
            'version': {'type': 'string'},
            'user': {'type': 'string'},
            'timestamp': {'type': 'string'},
            'changeset': {'type': 'integer', 'coerce': int},
            'uid': {'type': 'integer', 'coerce': int}
#            'visible': {'type': 'boolean', 'nullable': True}
        }
    },
    'way_nodes': {
        'type': 'list',
        'schema': {
            'type': 'dict',
            'schema': {
                'id': {'required': True, 'type': 'integer', 'coerce': int},
                'node_id': {'required': True, 'type': 'integer', 'coerce': int},
                'position': {'required': True, 'type': 'integer', 'coerce': int}
            }
        }
    },
    'way_tags': {
        'type': 'list',
        'schema': {
            'type': 'dict',
            'schema': {
                'id': {'required': True, 'type': 'integer', 'coerce': int},
                'key': {'required': True, 'type': 'string'},
                'value': {'required': True, 'type': 'string'},
                'type': {'type': 'string'}
            }
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


def get_element(osm_file, tags=('node', 'way', 'relation')):
    """Yield element if it is the right type of tag
    """
    context = ET.iterparse(osm_file, events=('start', 'end'))
    _, root = next(context)
    for event, elem in context:
        if event == 'end' and elem.tag in tags:
            yield elem
            root.clear()


def clean_street_name(name):
    """Fill in street cleaning code"""
    return name


# TODO Should this be a class instead?
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

    # Separate handling for node and way elements
    if element.tag == 'node':
        return {'node': attributes, 'node_tags': tags}

    elif element.tag == 'way':
        way_nodes = []
        for i, nd_tag in enumerate(element.iter('nd')):
            way_nodes.append({
                'id': element_id,
                'node_id': nd_tag.get('ref'),
                'position': i
            })

        return {'way': attributes, 'way_nodes': way_nodes, 'way_tags': tags}


def process_map(file_in, validate):
    """Iteratively process each XML element and write to csv(s)
    """
    # TODO Lots of duplicated code
    with codecs.open(NODES_PATH, 'w') as nodes_file, \
         codecs.open(NODE_TAGS_PATH, 'w') as nodes_tags_file, \
         codecs.open(WAYS_PATH, 'w') as ways_file, \
         codecs.open(WAY_TAGS_PATH, 'w') as way_tags_file, \
         codecs.open(WAY_NODES_PATH, 'w') as way_nodes_file: 

        nodes_writer = UnicodeDictWriter(nodes_file, CSV_FIELDS['nodes'])
        node_tags_writer = UnicodeDictWriter(nodes_tags_file, CSV_FIELDS['node_tags'])
        ways_writer = UnicodeDictWriter(ways_file, CSV_FIELDS['ways'])
        way_nodes_writer = UnicodeDictWriter(way_nodes_file, CSV_FIELDS['way_nodes'])
        way_tags_writer = UnicodeDictWriter(way_tags_file, CSV_FIELDS['way_tags'])

        nodes_writer.writeheader()
        node_tags_writer.writeheader()
        ways_writer.writeheader()
        way_nodes_writer.writeheader()
        way_tags_writer.writeheader()

        valid = cerberus.Validator(SCHEMA)

        for element in get_element(file_in, tags=('node', 'way')):
            el = shape_element(element)
            if validate is True:
                valid.validate(el)

            if element.tag == 'node':
                nodes_writer.writerow(el['node'])
                node_tags_writer.writerows(el['node_tags'])
            elif element.tag == 'way':
                way_nodes_writer.writerows(el['way_nodes'])
                way_tags_writer.writerows(el['way_tags'])



if __name__ == '__main__':
    # Note: Validation is ~ 10X slower. Consider using a smaller sample of
    # the map when validating.
    process_map(OSM_PATH, validate=False)