FROM python:3

RUN pip install --upgrade pip
ENV PYTHONUNBUFFERED 1
ENV APP /app
#RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN mkdir $APP
WORKDIR $APP
ADD requirements.txt .
RUN pip install -r requirements.txt

COPY . .
# # These line for /entrypoint.sh
# COPY start.sh /start.sh
# RUN chmod +x /start.sh
# entrypoint  "start.sh"  
#CMD ["./start.sh"]
EXPOSE 5000:5000