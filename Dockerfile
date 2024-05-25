FROM python:3.12.1

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt requirements.txt

# Install Python dependencies
RUN python -m pip install attrs==23.2.0 && \
    python -m pip install Automat==22.10.0 && \
    python -m pip install azure-core==1.29.7 && \
    python -m pip install azure-identity==1.15.0 && \
    python -m pip install azure-storage-blob==12.19.0 && \
    python -m pip install blinker==1.7.0 && \
    python -m pip install certifi==2023.11.17 && \
    python -m pip install cffi==1.16.0 && \
    python -m pip install charset-normalizer==3.3.2 && \
    python -m pip install click==8.1.7 && \
    python -m pip install colorama==0.4.6 && \
    python -m pip install constantly==23.10.4 && \
    python -m pip install contourpy==1.2.0 && \
    python -m pip install cryptography==41.0.7 && \
    python -m pip install cssselect==1.2.0 && \
    python -m pip install cycler==0.12.1 && \
    python -m pip install dnspython==2.5.0 && \
    python -m pip install filelock==3.13.1 && \
    python -m pip install Flask==3.0.1 && \
    python -m pip install Flask-Cors==3.0.10 && \
    python -m pip install fonttools==4.47.2 && \
    python -m pip install gpxpy==1.6.2 && \
    python -m pip install hyperlink==21.0.0 && \
    python -m pip install idna==3.6 && \
    python -m pip install incremental==22.10.0 && \
    python -m pip install isodate==0.6.1 && \
    python -m pip install itemadapter==0.8.0 && \
    python -m pip install itemloaders==1.1.0 && \
    python -m pip install itsdangerous==2.1.2 && \
    python -m pip install Jinja2==3.1.3 && \
    python -m pip install jmespath==1.0.1 && \
    python -m pip install joblib==1.3.2 && \
    python -m pip install kiwisolver==1.4.5 && \
    python -m pip install lxml==5.1.0 && \
    python -m pip install MarkupSafe==2.1.4 && \
    python -m pip install matplotlib==3.8.2 && \
    python -m pip install msal==1.26.0 && \
    python -m pip install msal-extensions==1.1.0 && \
    python -m pip install numpy==1.26.3 && \
    python -m pip install packaging==23.2 && \
    python -m pip install pandas==2.2.0 && \
    python -m pip install parsel==1.8.1 && \
    python -m pip install pillow==10.2.0 && \
    python -m pip install portalocker==2.8.2 && \
    python -m pip install Protego==0.3.0 && \
    python -m pip install pyarrow==15.0.0 && \
    python -m pip install pyasn1==0.5.1 && \
    python -m pip install pyasn1-modules==0.3.0 && \
    python -m pip install pycparser==2.21 && \
    python -m pip install PyDispatcher==2.0.7 && \
    python -m pip install PyJWT==2.8.0 && \
    python -m pip install pymongo==4.6.1 && \
    python -m pip install pyOpenSSL==23.3.0 && \
    python -m pip install pyparsing==3.1.1 && \
    python -m pip install python-dateutil==2.8.2 && \
    python -m pip install pytz==2023.3.post1 && \
    python -m pip install queuelib==1.6.2 && \
    python -m pip install requests==2.31.0 && \
    python -m pip install requests-file==1.5.1 && \
    python -m pip install scikit-learn==1.4.0 && \
    python -m pip install scipy==1.12.0 && \
    python -m pip install Scrapy==2.11.0 && \
    python -m pip install seaborn==0.13.1 && \
    python -m pip install service-identity==23.1.0 && \
    python -m pip install setuptools==69.0.3 && \
    python -m pip install six==1.16.0 && \
    python -m pip install threadpoolctl==3.2.0 && \
    python -m pip install tldextract==5.1.1 && \
    python -m pip install Twisted==22.10.0 && \
    python -m pip install typing_extensions==4.9.0 && \
    python -m pip install tzdata==2023.4 && \
    python -m pip install urllib3==2.1.0 && \
    python -m pip install w3lib==2.1.2 && \
    python -m pip install Werkzeug==3.0.1 && \
    python -m pip install zope.interface==6.1

# Copy the rest of the application code into the container
COPY . .

# Command to run the application
CMD [ "python", "app.py" ]