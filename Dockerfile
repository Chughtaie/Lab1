FROM python
ENV USERNAME=chughtai
# RUN mkdir -p /home/chughtai/docker/dockerDemo
# COPY . /home/chughtai/docker/dockerDemo
# EXPOSE 5000
# WORKDIR /home/chughtai/docker/dockerDemo
# RUN pip install -r requirements.txt
# RUN chmod +x deployment-service
# CMD ['pytest','test_calculator.py']
WORKDIR /home/chughtai/docker/dockerDemo
ENV VIRTUAL_ENV=/opt/venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

# Install dependencies:
COPY requirements.txt .
RUN pip install -r requirements.txt

# Run the application:
COPY myapp.py .
CMD ["python", "myapp.py"]