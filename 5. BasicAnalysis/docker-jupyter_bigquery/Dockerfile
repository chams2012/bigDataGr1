FROM jupyter/all-spark-notebook
USER root
RUN apt update && apt install nano -y
RUN apt install net-tools -y
USER jovyan
RUN pip install --upgrade google-cloud-bigquery
# RUN pip install -e git+https://github.com/SohierDane/BigQuery_Helper#egg=bq_helper
# RUN export GOOGLE_APPLICATION_CREDENTIALS="/home/jovyan/work/key.json"
CMD /usr/local/bin/start-notebook.sh
