import os

class Config:
    API_ID = int(os.getenv("API_ID", 26489431))
    API_HASH = os.getenv("API_HASH", '9a2fce85339bb79254a55368a61ab92f')
    BOT_TOKEN = os.getenv("BOT_TOKEN", '7506131429:AAE8AqZ8uAMIj8La9kluJLQUeGvVJaQIlzM')
