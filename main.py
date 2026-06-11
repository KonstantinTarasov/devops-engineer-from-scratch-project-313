from fastapi import FastAPI
import uvicorn

app = FastAPI()

@app.get("/ping")
def ping():
    return {"message": "pong"}

# попробуем отправить на render, без прописанного порта
# избежания ошибки  ==> Exited with status 128
# if __name__ == "__main__":
#     uvicorn.run("main:app", port=8080)

if __name__ == "__main__":
    main()
