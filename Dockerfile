FROM python:3.7.3-alpine

RUN apt-get install git \
	&& pip install pyyaml \
    && pip install git+https://github.com/Microsoft/SparseSC \
	&& curl -sL https://aka.ms/InstallAzureCLIDeb | bash

CMD ["python","-c","from SparseSC.src.stt import main; print('OK')"]
