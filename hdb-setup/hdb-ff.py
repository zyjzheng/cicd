import httplib2
import sys
import json
import mimetypes
import mimetools
import os

restHeaders={"Content-type":"application/json","Accept":"application/json"}

def HttpPost(url, header, data):
    h = httplib2.Http('.cache')
    response,content = h.request(url, 'POST', data, header)
    return response.status,content

def HttpPatch(url, header, data):
    h = httplib2.Http('.cache')
    response,content = h.request(url, 'PATCH', data, header)
    return response.status,content

def err(msg):
    print msg
    sys.exit(1)

def CreateFF(url, path):
    file = open(path)
    try:
        data = file.read()
    finally:
        file.close()
    status,content = HttpPost(url, restHeaders, data)
    if status != 200:
        err("http request err while create ff! %s" % (content))
    resp = json.loads(content)
    if resp['code'] != 20000:
        err("failed to create ff " + content)

def Usage():
    print 'cmd url, basepath, idx'

if __name__ == '__main__':
    if len(sys.argv) != 4:
        Usage()
    FFURL='''%s/ffactivities''' % (sys.argv[1])
    FF_TEMPLATE='''%s/ffs/%s''' % (sys.argv[2], sys.argv[3])
    CreateFF(FFURL, FF_TEMPLATE)
