FROM odoo:15.0

RUN pip3 install html2text
RUN pip3 install regex
RUN pip3 install odoo-test-helper
RUN pip3 install flanker
