#!/usr/bin/python
import urllib2
import os
import glob

class GetAnime():
    def __init__(self, filter_file):
        self.name = filter_file['name']
        self.section_sep_begin = filter_file['section_sep_begin']
        self.section_sep_end = filter_file['section_sep_end']
        self.begin = filter_file['begin']
        self.end = filter_file['end']
        self.url = filter_file['url']
        self.data = ''
    
    def get_data(self):
        self.data = urllib2.urlopen(self.url).read()

    def get_list(self):
        if not self.data:
            self.get_data()

        section = self.data.split(self.section_sep_begin)[1].split(self.section_sep_end)[0]
        #import pdb; pdb.set_trace()
        for line in section.split(self.begin):
            print "$ " + line

    def debug(self):
        import pdb; pdb.set_trace()

for i in glob.glob('filter*.flt'):
    ga = GetAnime(eval(open(i, 'r').read()))
#    ga.debug()
    ga.get_list()



"""
def get_list(data,separator):
	torrent_list = []
	for file in data.split(separator):
		torrent_list.append(separator.split('/')[-1]+file.split('" title="')[0])
	return torrent_list[1:] 

data = urllib.urlopen('http://www.dattebayobrasil.com/t/')
data = data.read().split('<a class="dummy" name="NarutoShippuuden">Naruto Shippuuden</a>')[1]

last_ns = open('/home/liquuid/.last_ns.txt').read().strip()
last_b = open('/home/liquuid/.last_b.txt').read().strip()

ns_list = get_list(data,'<td class="file"><a href="http://t.dattebayobrasil.com/files/ns') 
for item in ns_list:
        if item == last_ns:
		os.system("cd "+download_folder+";wget -c http://t.dattebayobrasil.com/files/"+item)
                break
#	os.system("cd "+download_folder+";wget -c http://t.dattebayobrasil.com/files/"+item)

fd = open('/home/liquuid/.last_ns.txt','w')
fd.write(ns_list[0])



b_list = get_list(data,'<td class="file"><a href="http://t.dattebayobrasil.com/files/b')
for item in b_list:
        if item == last_b:
		os.system("cd "+download_folder+";wget -c http://t.dattebayobrasil.com/files/"+item)
                break
#        os.system("cd "+download_folder+";wget -c http://t.dattebayobrasil.com/files/"+item)

fd = open('/home/liquuid/.last_b.txt','w')
fd.write(b_list[0])


os.system('/usr/local/etc/rc.d/transmission restart')
#print get_list(data,'<td class="file"><a href="http://t.dattebayobrasil.com/files/ns'), last_ns , last_b
"""
