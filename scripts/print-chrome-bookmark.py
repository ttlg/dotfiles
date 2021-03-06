#!/usr/bin/python
# -*- Coding: utf-8 -*-

import os
import json
import sys


def is_folder(obj):
    return 'type' in obj and obj['type'] == 'folder'

mac_bookmark_path = os.path.expanduser("~/Library/Application Support/Google/Chrome/Default/Bookmarks")
bookmark_path = mac_bookmark_path
with open(bookmark_path, 'r') as fp:
    bookmark_obj = json.load(fp)
    bookmark_root = bookmark_obj['roots']['bookmark_bar']
    bookmark_list = list()
    folder_list = list()
    folder_list.append(bookmark_root)
    while 0 < len(folder_list):
        folder = folder_list.pop()
        if 'children' in folder:
            for child in folder['children']:
                if is_folder(child):
                    folder_list.append(child)
                else:
                    bookmark_list.append(child)


def format_bookmark(obj):
    formatted_text = ''
    if 'name' in obj:
        formatted_text += obj['name']
    if 'url' in obj:
        formatted_text += ' | ' + obj['url']
    if (3, 0) < sys.version_info:
        return formatted_text
    else:
        return formatted_text.encode('utf-8')

formatted_bookmark = [format_bookmark(obj) for obj in bookmark_list]
for bookmark in formatted_bookmark:
    print(bookmark)

