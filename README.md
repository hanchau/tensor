##### Why?
    The purpose of this project is to get familiar with Tensorflow, Keras etc.
    To Try out different available datasets, to follow couple of tutorials.
    At the end of this project, one should stand with better understanding of Tensorflow API
    and Deep Learning concepts as a whole.

##### How?
1.  Getting Familiar.
    - [ ] Implement a simple project e.g. Titanic
    - [ ] Try some tweaking on the model.
    - [ ] Plot various results.
    - [ ] Test on few handpicked cases.
    - [ ] Look for already existing tools, techniques
      - [ ] Find solid ways to spot overfitting and underfitting.
    - [ ] Draw the Confustion Matrix.
    - [ ] Analyse the Failed Cases.
    - [ ] Find out the reason of Failures i.e. FP, FN
    - [ ] Try to mitigate the model drawbacks by tweaking the model.
    - [ ] Create a benchmarking system.
    - [ ] Maintain version of Model e.g. {1.0.0: Features/Params} - create a map of model version and it's features.
      - [X] Try GDRIVE method.
    - [ ] For each iteration, add the prediction to an Excel, for comparison with previous models
    - [ ] Articulate that why model passes on a test, fails on another.
2. Repeate Step 1 for different datasets
    - [ ] Titanic Dataset
    - [ ] House Prices data
    - [ ] MNIST Fashion
    - [ ] MNIST
3. Build an end-to-end solution.
    - [ ] Feature Selection (for NN models), Images library (for CNN models).
    - [ ] Training/Testing.
    - [ ] Write an API, with simple 
    - [ ] request : {"input": "image/features"} and 
    - [ ] response : {"output": {"class": <>, "confidence": <>}
    - [ ] Deploy the API on docker container.
    - [ ] Think about scaling the API, load testing etc, and its implementation.
4. Deep Learning Ecosystem.
   - [ ] Look at Kaggle deep learning Implementations and ecosystems.

##### Instructions
1. Push model to gdrive directory.
    ```console
    ./push_model.sh /path/to/model.pickle
    ```
2. Pull model from gdrive directory.
   ```
   gdrive download <model_id>
   ```

##### References
1. [Neural net on MNIST Fashion | Venelin Valkov](https://towardsdatascience.com/building-your-first-neural-network-in-tensorflow-2-tensorflow-for-hackers-part-i-e1e2f1dfe7a0)
2. [GDRIVE from Command Line](https://medium.com/geekculture/how-to-upload-file-to-google-drive-from-linux-command-line-69668fbe4937)
   