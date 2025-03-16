import streamlit as st

# st.write("Hello, world!")

text = st.chat_input("Type a message...")
st.write(f"You typed: {text}")

