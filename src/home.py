import os
import streamlit as st
from dotenv import load_dotenv, find_dotenv

load_dotenv(find_dotenv())
env_value = os.getenv("WX_CLOUD_URL", None)
st.write(f"env_value: {env_value}")

text = st.chat_input("Type a message...")
st.write(f"You typed: {text}")

