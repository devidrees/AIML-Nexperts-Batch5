import streamlit as st
# import sklearn
import joblib

st.title("Breast Cancer Detection App")
st.write("Breast Cancer diagonosis app. Please put your medical data here and let's help you diagonose for free.")



worst_concave_points = st.slider(min_value=0.00, max_value=0.291, step=0.01, label= "Worst Concave Points")
mean_concave_points = st.slider(min_value=0.00, max_value=0.291, step=0.01, label= "Mean Concave Points")
worst_area = st.slider(min_value=185.20, max_value=4254.0, step=1.0, label= "Worst Area")
worst_radius =  st.slider(min_value=7.93, max_value=36.04, step=1.0, label= "Worst Radius")


model = joblib.load('Breast_cancer_model.pkl')
    
if st.button("Diagnosis"):
    input_values = [worst_concave_points, mean_concave_points, worst_area, worst_radius, 14.13, 40.34, 0.41, 91.97, 0.25, 107.26, 0.27, 25.68, 0.03, 654.89, 0.1]
    # needs 15 input
    result = model.predict([input_values])
    if result == 0:
        st.warning("Cancer is Present!")
    else:
        st.success("Cancer Free!")



