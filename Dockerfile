FROM odoo:15.0

RUN pip3 install html2text
RUN pip3 install regex
RUN pip3 install odoo-test-helper
RUN pip3 install flanker
RUN pip3 install pandas
RUN pip3 install sqlparse
RUN pip3 install redis
RUN pip3 install dnsq
