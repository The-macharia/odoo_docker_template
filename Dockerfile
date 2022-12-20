FROM odoo-base:15.0
USER odoo

COPY requirements.txt mnt/extra-addons
RUN pip3 install -r /mnt/extra-addons/requirements.txt --no-cache-dir

COPY config/ /etc/odoo
COPY custom-addons/ /mnt/extra-addons/custom-addons/

USER odoo
