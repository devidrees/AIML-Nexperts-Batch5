import streamlit as st
st.title("MultiPage Streamlit App")
st.write("we are building a streamlit app with multiple pages")



st.page_link("pages/page_1.py", labels = "Page 1")
st.page_link("pages/page_2.py", labels = "Page 2")
