# AI_MLpii_detection

## One-click deploy

Deploy to Render (uses the repository `Dockerfile` to build and run the Streamlit app):

[![Deploy to Render](https://render.com/deploy/button.svg)](https://dashboard.render.com/deploy?repo=https://github.com/Vinaymahto808/ai_mlpii_detection)

Railway: connect your GitHub repo in the Railway dashboard and choose "Deploy from Dockerfile" or let Railway detect the repo. Set the `PORT` environment variable (Railway provides it automatically) and use the default command:

```
streamlit run app.py --server.port $PORT --server.address 0.0.0.0
```

Notes:
- This repo includes a `Dockerfile` that installs system dependencies (Tesseract, libGL) required by OpenCV and OCR.
- Streamlit Community Cloud may not provide the required system packages; using Render/Railway with the Dockerfile ensures Tesseract and libGL are available.

If you want, I can create a Render app for you (you'll need to authenticate in the browser) or help configure Railway step-by-step.