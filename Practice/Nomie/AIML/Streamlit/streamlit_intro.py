import streamlit as st
 
st.title("First Streamlit app")
 
st.write("Helloww. I am here to build apps!")
 
st.write("Helloww. I am here to build apps!")

name = st.text_input("What is your name?")

age = st.slider("How old are you?", 1, 100, 25)

if name:
    st.write(f"Nice to meet you, {name}!")


import pandas as pd
data = {
    "Days": ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"],
    "Cups of Coffee": [1, 2, 4, 3, 5]
}
coffee_table = pd.DataFrame(data)
st.write("Here is the data:")
st.dataframe(coffee_table)


st.write("Here is the visual chart:")
st.bar_chart(coffee_table, x="Days", y="Cups of Coffee", color = "#005783")

st.divider() # adds a horizontal line




# choice inputs
 
size = st.radio("Pick a size:", ["Small", "Medium", "Large"])

st.divider() # adds a horizontal line
 
country = st.selectbox("Where are you from?", ["India", "Malaysia", "USA", "UK"])

st.divider() # adds a horizontal line
 
skills = st.multiselect("Select your skills:", ["Python", "SQL", "Power BI", "AI"])