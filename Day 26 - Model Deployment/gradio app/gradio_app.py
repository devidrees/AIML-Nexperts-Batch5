import gradio as gr 
import joblib

# for this application to be correct, actually in reality, we actually need to put in 15 inputs
# from user we are only asking 4 - to save class time
def predict_cancer(worst_concave_points, mean_concave_points, worst_area, worst_radius):
    input_values = [worst_concave_points, mean_concave_points, worst_area,worst_radius, 0,0,0,0,0,0,0,0,0,0,0]
    
    # in the inputs, we could now either keep zeros,
    # let's pass mean values of the rest of the columns 
    input_values = [worst_concave_points, mean_concave_points, worst_area, worst_radius, 14.13, 40.34, 0.41, 91.97, 0.25, 107.26, 0.27, 25.68, 0.03, 654.89, 0.1]
    
    model = joblib.load('Breast_cancer_model.pkl')
    
    # needs 15 input
    result = model.predict([input_values])
    
    if result == 0:
        return 'Yes, Cancer is present'
    else:
        return 'No, There is no cancer!'
    


# gradio interface
app = gr.Interface(
    fn = predict_cancer,
    inputs = [
        gr.Slider(minimum=0.00, maximum=0.291, step=1, label= "Worst Concave Points"),
        gr.Slider(minimum=0.00, maximum=0.291, step=1, label= "Mean Concave Points"),
        gr.Slider(minimum=185.20, maximum=4254.0, step=1, label= "Worst Area"),
        gr.Slider(minimum=7.93, maximum=36.04, step=1, label= "Worst Radius")
    ],
    outputs = 'text',
    title = 'Breast Cancer Detection App', 
    description = 'Enter your medical exam report values, and get Prediction'
)

app.launch(share = True)