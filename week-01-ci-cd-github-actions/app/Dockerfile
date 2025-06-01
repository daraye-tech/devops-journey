FROM python:3.12-slim

WORKDIR /app

COPY . .

# Install dependencies
RUN python -m pip install --upgrade pip && \
    pip install --no-cache-dir --root-user-action=ignore -r requirements.txt


EXPOSE 5000

CMD [ "python", "app.py" ]