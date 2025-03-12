import streamlit as st

st.title("我的Streamlit聊天机器人")

user_input = st.text_input("输入您的问题：")
if user_input:
    st.write(f"您输入了: {user_input}")
    # 这里添加您的聊天机器人逻辑
