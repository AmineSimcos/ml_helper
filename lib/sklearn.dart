import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'functions.dart';
import 'readcodefromfile.dart';
import 'widgets/mylisttile.dart';

class SklearnScreen extends StatelessWidget {
  const SklearnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // centerTitle: true,
        title: Row(
          children: [
            Image.asset(
              "assets/images/sklearn.png",
              height: 38,
            ),
            const SizedBox(width: 8),
            const Text('Sklearn'),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          // 04 Sklearn Preprocessing
          MyListTile(
            title: "Model Selection KFold",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Model Selection LeaveOneOut",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Model Selection LeavePOut",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Model Selection RepeatedKFold",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Model Selection RepeatedStratifiedKFold",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Model Selection ShuffleSplit",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Model Selection StratifiedKFold",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Model Selection StratifiedShuffleSplit",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Model Selection TimeSeriesSplit",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Model Selection Train Test Split",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Preprocessing Binarizer",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Preprocessing FunctionTransformer",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Preprocessing LabelEncoder",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Preprocessing MaxAbsScaler",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Preprocessing MinMaxScaler",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Preprocessing Normalizer",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Preprocessing OneHotEncoder",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Preprocessing PolynomialFeatures",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Preprocessing StandardScaler",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          // 05 Sklearn Features
          MyListTile(
            title: "Data",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Data Cleaning Imputer",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Feature Selection GenericUnivariateSelect",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Feature Selection SelectFromModel",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Feature Selection SelectKBest",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Feature Selection SelectPercentile",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(title: "Version"),
          // 06 Sklearn Models
          MyListTile(
            title: "Cluster AgglomerativeClustering",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Cluster DBSCAN",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Cluster KMeans",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Cluster MiniBatchKMeans",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Decomposition PCA",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Decomposition SVD",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Discriminant Analysis LDA",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Discriminant Analysis QDA",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Ensemble GradientBoostingClassifier",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Ensemble GradientBoostingRegressor",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Ensemble RandomForestClassifier",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Ensemble RandomForestRegressor",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Ensemble VotingClassifier",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Externals joblib",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Feature Extraction CountVectorizer",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Linear Model Lasso",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Linear Model LinearRegression",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Linear Model LogisticRegression",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Linear Model Ridge",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Linear Model SGDClassifier",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Linear Model SGDRegressor",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Naive Bayes BernoulliNB",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Naive Bayes GaussianNB",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Naive Bayes MultinomialNB",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Neighbors KNeighborsClassifier",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Neighbors KNeighborsRegressor",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Neighbors NearestNeighbors",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Neural Network MLPClassifier",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Neural Network MLPRegressor",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "svm SVC",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "svm SVR",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Tree DecisionTreeClassifier",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Tree DecisionTreeRegressor",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          // 07 Sklearn Check
          MyListTile(
            title: "Metrics accuracy_score",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Metrics auc",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Metrics classification_report",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Metrics confusion_matrix",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Metrics f1_score",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Metrics mean_absolute_error",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Metrics mean_squared_error",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Metrics median_absolute_error",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Metrics precision_recall_curve",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Metrics precision_recall_fscore_support",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Metrics precision_score",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Metrics roc_auc_score",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Metrics roc_curve",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Metrics zero_one_loss",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Model Selection Cross Val Predict",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Model Selection Cross Val Score",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Model Selection Cross Validate",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Model Selection GridSearchCV",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Model Selection RandomizedSearchCV",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
          MyListTile(
            title: "Pipeline",
            onTap: () async {
              String text = await read("statistics/statistics.py");
              Get.to(() => ReadCodeFromFile("Statistics Library", text));
            },
          ),
        ],
      ),
    );
  }
}
