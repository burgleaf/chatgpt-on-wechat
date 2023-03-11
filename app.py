# encoding:utf-8
import os

import config
from channel import channel_factory
from common.log import logger
api_base = os.environ.get("OPENAI_API_BASE", "https://api.openai.com/v1")


if __name__ == '__main__':
    try:
        logger.info(f"api_base:{api_base}")
        # load config
        config.load_config()

        # create channel
        channel = channel_factory.create_channel("wx")

        # startup channel
        channel.startup()
    except Exception as e:
        logger.error("App startup failed!")
        logger.exception(e)
