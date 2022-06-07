from os import path

from pydantic import BaseSettings

_app_dir = path.dirname(path.abspath(__file__))


class Settings(BaseSettings):
    """
    Set API configuration.
    """

    DATABASE_URI: str

    class Config:
        env_file = path.join(_app_dir, ".env")


settings = Settings()
