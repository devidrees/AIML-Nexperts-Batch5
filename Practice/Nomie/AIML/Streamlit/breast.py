import streamlit as st
import pickle

model = pickle.load(open("Breast_cancer_model.pkl", "rb"))

st.title("Breast Cancer Prediction")

worst_concave_points = st.slider(
    "Worst Concave Points",
    min_value=0.00,
    max_value=0.291,
    step=0.01
)

mean_concave_points = st.slider(
    "Mean Concave Points",
    min_value=0.00,
    max_value=0.291,
    step=0.01
)

worst_area = st.slider(
    "Worst Area",
    min_value=185.20,
    max_value=4254.0,
    step=1.0
)

worst_radius = st.slider(
    "Worst Radius",
    min_value=7.93,
    max_value=36.04,
    step=1.0
)


if st.button("Diagnosis"):

    input_values = [
        worst_concave_points,
        mean_concave_points,
        worst_area,
        worst_radius,
        14.13,
        40.34,
        0.41,
        91.97,
        0.25,
        107.26,
        0.27,
        25.68,
        0.03,
        654.89,
        0.1
    ]

    result = model.predict([input_values])[0]

    if result == 0:
        st.warning("⚠️ Cancer is Present")
    else:
        st.success("✅ Cancer Free")
 