Credit Card Fraud Detection
===========================

DataSet:
---------
The datasets contains transactions made by credit cards in September 2013 by european cardholders.

Goal:
------
Findout fraud transactions

creditcard.csv
V1 || V2 || ... || V28 || Time || Amount || Class


Features V1, V2, ... V28 are the principal components obtained with PCA
Feature 'Time' contains the seconds elapsed between each transaction and the first transaction in the dataset.
The feature 'Amount' is the transaction Amount, this feature can be used for example-dependant cost-senstive learning. 
Feature 'Class' is the response variable and it takes value 1 in case of fraud and 0 otherwise.


Project Modules:

Module1:
--------------------------------------------
a) Data analysis

--There are total 284807 obs.(rows) of  31 variables(cols)</br>
--Time,V1..V28,Amount,Class</br>
--So Class is label and other 30 cols are features.</br>

-- summary of each cloumns
<table>
  <tr>
  <td></td>
  <td>V1</td>
  <td>V2</td>
  <td>V3</td>
  <td>V4</td>
  <td>V5</td>
  <td>V6</td>
  <td>V7</td>
  <td>V8</td>
  </tr>
  <tr>
  <td>Min</td>
  <td>-56.40751</td>
  <td>-72.71573</td>
  <td>-48.3256</td>
  <td>-5.68317</td>
  <td>-113.74331</td>
  <td>-26.1605</td>
  <td>-43.5572</td>
  <td>-73.21672</td>
  </tr>
  <tr>
  <td>Max</td>
  <td>2.45493</td>
  <td>22.05773</td>
  <td>9.3826</td>
  <td>16.87534</td>
  <td>34.80167</td>
  <td>73.3016</td>
  <td>120.5895</td>
  <td>20.00721</td>
  </tr>
  <tr>
  <td>Mean</td>
  <td>0.00000</td>
  <td>0.00000</td>
  <td>0.00000</td>
  <td>0.00000</td>
  <td>0.00000</td>
  <td>0.00000</td>
  <td>0.00000</td>
  <td>0.00000</td>
  </tr>
  <tr>
  <td>SD</td>
  <td></td>
  <td></td>
  <td></td>
  <td></td>
  <td></td>
  <td></td>
  <td></td>
  <td></td>
  </tr>
</table>

<table>
  <tr>
  <td></td>
  <td>V9</td>
  <td>V10</td>
  <td>V11</td>
  <td>V12</td>
  <td>V13</td>
  <td>V14</td>
  <td>V15</td>
  <td>V16</td>
  </tr>
  <tr>
  <td>Min</td>
  <td>-13.43407</td>
  <td>-24.58826</td>
  <td>-4.79747</td>
  <td>-18.6837</td>
  <td>-5.79188</td>
  <td>-19.2143</td>
  <td>-4.49894</td>
  <td>-14.12985</td>
  </tr>
  <tr>
  <td>Max</td>
  <td>15.59500</td>
  <td>23.74514</td>
  <td>12.01891</td>
  <td>7.8484</td>
  <td>7.12688</td>
  <td>10.5268</td>
  <td>8.87774</td>
  <td>17.31511</td>
  </tr>
  <tr>
  <td>Mean</td>
  <td>0.00000</td>
  <td>0.00000</td>
  <td>0.00000</td>
  <td>0.00000</td>
  <td>0.00000</td>
  <td>0.00000</td>
  <td>0.00000</td>
  <td>0.00000</td>
  </tr>
  <tr>
  <td>SD</td>
  <td></td>
  <td></td>
  <td></td>
  <td></td>
  <td></td>
  <td></td>
  <td></td>
  <td></td>
  </tr>
</table>

<table>
  <tr>
  <td></td>
  <td>V17</td>
  <td>V18</td>
  <td>V19</td>
  <td>V20</td>
  <td>V21</td>
  <td>V22</td>
  <td>V23</td>
  <td>V24</td>
  </tr>
  <tr>
  <td>Min</td>
  <td>-25.16280</td>
  <td>-9.498746</td>
  <td>-7.213527</td>
  <td>-54.49772</td>
  <td>-34.83038</td>
  <td>-10.933144</td>
  <td>-44.80774</td>
  <td>-2.83663</td>
  </tr>
  <tr>
  <td>Max</td>
  <td>9.25353</td>
  <td>5.041069</td>
  <td>5.591971</td>
  <td>39.42090</td>
  <td>27.20284</td>
  <td>10.503090</td>
  <td>22.52841</td>
  <td>4.58455</td>
  </tr>
  <tr>
  <td>Mean</td>
  <td>0.00000</td>
  <td>0.00000</td>
  <td>0.00000</td>
  <td>0.00000</td>
  <td>0.00000</td>
  <td>0.00000</td>
  <td>0.00000</td>
  <td>0.00000</td>
  </tr>
  <tr>
  <td>SD</td>
  <td></td>
  <td></td>
  <td></td>
  <td></td>
  <td></td>
  <td></td>
  <td></td>
  <td></td>
  </tr>
</table>

<table>
  <tr>
  <td></td>
  <td>V25</td>
  <td>V26</td>
  <td>V27</td>
  <td>V28</td>
  <td>Amount</td>
  <td>Time</td>
  </tr>
  <tr>
  <td>Min</td>
  <td>-10.29540</td>
  <td>-2.60455</td>
  <td>-22.565679</td>
  <td>-15.43008</td>
  <td>0.00</td>
  <td>0</td>
  </tr>
  <tr>
  <td>Max</td>
  <td>7.51959</td>
  <td>3.51735</td>
  <td>31.612198</td>
  <td>33.84781</td>
  <td>25691.16</td>
  <td>172792</td>
  </tr>
  <tr>
  <td>Mean</td>
  <td>0.00000</td>
  <td>0.00000</td>
  <td>0.00000</td>
  <td>0.00000</td>
  <td>88.35</td>
  <td>94814</td>
  </tr>
  <tr>
  <td>SD</td>
  <td></td>
  <td></td>
  <td></td>
  <td></td>
  <td></td>
  <td></td>
  </tr>
</table>

<table>
  <tr>
  <td>MAX_BAR_PLOT</td>
  <td>MIN_BAR_PLOT</td>
  <td>MEAN_BAR_PLOT</td>
  <td>SD_BAR_PLOT</td>
  </tr>
  <tr>
  <td><img width="400" height="400" alt="max_bar_plot" src="https://github.com/jaydeepchakraborty/kaggle_CreditCardFraudDetection/blob/master/img/imgmax_.jpeg"></td>
  <td><img width="400" height="400" alt="min_bar_plot" src="https://github.com/jaydeepchakraborty/kaggle_CreditCardFraudDetection/blob/master/img/imgmin_.jpeg"></td>
  <td><img width="400" height="400" alt="mean_bar_plot" src="https://github.com/jaydeepchakraborty/kaggle_CreditCardFraudDetection/blob/master/img/imgmean_.jpeg"></td>
  <td><img width="400" height="400" alt="sd_bar_plot" src="https://github.com/jaydeepchakraborty/kaggle_CreditCardFraudDetection/blob/master/img/imgsd_.jpeg"></td>
  </tr>
</table>

<b>So from the above diagrams and figures we <br>
  1) each column is spread through differently(too much flactuation)<br>
  [Standardization: rescaling data to have a mean(μ) of 0 and standard deviation(σ) of 1]
  2) the columns with higher value(Time, Amount, V5 will dominate more)<br>
  [Normalization: rescaling data into range of [0,1]]
</b>

The following digram is frequency of data for each class(0,1). It is clearly showed in the diagram that we have imbalanced data. 
<img width="400" height="400" alt="df_bar_plot" src="https://github.com/jaydeepchakraborty/kaggle_CreditCardFraudDetection/blob/master/img/imgdf_.jpeg"> 
<br><b>[4] The followings are the ways to deal with imbalanced data
  1) Class weights: impose a heavier cost when errors are made in the minority class<br>
  2) Down-sampling: randomly remove instances in the majority class<br>
  3) Up-sampling: randomly replicate instances in the minority class<br>
  4) Synthetic minority sampling technique (SMOTE): down samples the majority class and synthesizes new minority instances by interpolating between existing ones<br> We will use SMOTE.<b>


We have used R package called "corrplot"[1]. Here positive correlations are displayed in blue and negative correlations are displayed in red color. Color intensity and the size of the circle are proportional to the correlation coefficients. The legend color shows the correlation coefficients and the corresponding colors[2]. </br>

<b>From the below images, we can say that all the attributes are not co-related to each other. We can not ommit any one of them.</b>
<img width="400" height="400" alt="corr_plot" src="https://github.com/jaydeepchakraborty/kaggle_CreditCardFraudDetection/blob/master/img/corr_.jpeg">


Module2:
--------------------------------------------
a) Outlier analysis</br>
To represent outliers , we have used boxplot diagrams, using plotly library in R [3]. For each feature, boxplots for both "Fraud" class and "Normal" class are plotted separately. Histograms representing the distribution of each feature are also plotted.

<b>
  1) outliers for class-0(not fraud) is way more than class-1(fraud). So we can know that fetures of fraud classes are following a pattern.
  2) We also know that some of the features are rightly skewed(V1, V2, V8 etc.), some are leftly skewed(v7 etc.) but most of them follow normal distribution (V4, V11, V13, V15 etc.)
  
<table>
  <tr>
  <td><img width="200" height="250" alt="histogram - 1" src="https://github.com/jaydeepchakraborty/kaggle_CreditCardFraudDetection/blob/master/img/hist_V1.jpeg"></td>
  <td><img width="200" height="250" alt="boxplot - 1" src="https://github.com/jaydeepchakraborty/kaggle_CreditCardFraudDetection/blob/master/img/box_V1.jpeg"></td>
  <td><img width="200" height="250" alt="histogram - 2" src="https://github.com/jaydeepchakraborty/kaggle_CreditCardFraudDetection/blob/master/img/hist_V2.jpeg"></td>
  <td><img width="200" height="250" alt="boxplot - 2" src="https://github.com/jaydeepchakraborty/kaggle_CreditCardFraudDetection/blob/master/img/box_V2.jpeg"></td>
  <tr>
  <tr>
  <td><img width="200" height="250" alt="histogram - 3" src="https://github.com/jaydeepchakraborty/kaggle_CreditCardFraudDetection/blob/master/img/hist_V3.jpeg"></td>
  <td><img width="200" height="250" alt="boxplot - 3" src="https://github.com/jaydeepchakraborty/kaggle_CreditCardFraudDetection/blob/master/img/box_V3.jpeg"></td>
  <td><img width="200" height="250" alt="histogram - 4" src="https://github.com/jaydeepchakraborty/kaggle_CreditCardFraudDetection/blob/master/img/hist_V4.jpeg"></td>
  <td><img width="200" height="250" alt="boxplot - 4" src="https://github.com/jaydeepchakraborty/kaggle_CreditCardFraudDetection/blob/master/img/box_V4.jpeg"></td>
  <tr>
  <tr>
  <td><img width="200" height="250" alt="histogram - 5" src="https://github.com/jaydeepchakraborty/kaggle_CreditCardFraudDetection/blob/master/img/hist_V5.jpeg"></td>
  <td><img width="200" height="250" alt="boxplot - 5" src="https://github.com/jaydeepchakraborty/kaggle_CreditCardFraudDetection/blob/master/img/box_V5.jpeg"></td>
  <td><img width="200" height="250" alt="histogram - 6" src="https://github.com/jaydeepchakraborty/kaggle_CreditCardFraudDetection/blob/master/img/hist_V6.jpeg"></td>
  <td><img width="200" height="250" alt="boxplot - 6" src="https://github.com/jaydeepchakraborty/kaggle_CreditCardFraudDetection/blob/master/img/box_V6.jpeg"></td>
  <tr>
  <tr>
  <td><img width="200" height="250" alt="histogram - 7" src="https://github.com/jaydeepchakraborty/kaggle_CreditCardFraudDetection/blob/master/img/hist_V7.jpeg"></td>
  <td><img width="200" height="250" alt="boxplot - 7" src="https://github.com/jaydeepchakraborty/kaggle_CreditCardFraudDetection/blob/master/img/box_V7.jpeg"></td>
  <td><img width="200" height="250" alt="histogram - 8" src="https://github.com/jaydeepchakraborty/kaggle_CreditCardFraudDetection/blob/master/img/hist_V8.jpeg"></td>
  <td><img width="200" height="250" alt="boxplot - 8" src="https://github.com/jaydeepchakraborty/kaggle_CreditCardFraudDetection/blob/master/img/box_V8.jpeg"></td>
  <tr>
  <tr>
  <td><img width="200" height="250" alt="histogram - 9" src="https://github.com/jaydeepchakraborty/kaggle_CreditCardFraudDetection/blob/master/img/hist_V9.jpeg"></td>
  <td><img width="200" height="250" alt="boxplot - 9" src="https://github.com/jaydeepchakraborty/kaggle_CreditCardFraudDetection/blob/master/img/box_V9.jpeg"></td>
  <td><img width="200" height="250" alt="histogram - 10" src="https://github.com/jaydeepchakraborty/kaggle_CreditCardFraudDetection/blob/master/img/hist_V10.jpeg"></td>
  <td><img width="200" height="250" alt="boxplot - 10" src="https://github.com/jaydeepchakraborty/kaggle_CreditCardFraudDetection/blob/master/img/box_V10.jpeg"></td>
  <tr>
  <tr>
  <td><img width="200" height="250" alt="histogram - 11" src="https://github.com/jaydeepchakraborty/kaggle_CreditCardFraudDetection/blob/master/img/hist_V11.jpeg"></td>
  <td><img width="200" height="250" alt="boxplot - 11" src="https://github.com/jaydeepchakraborty/kaggle_CreditCardFraudDetection/blob/master/img/box_V11.jpeg"></td>
  <td><img width="200" height="250" alt="histogram - 12" src="https://github.com/jaydeepchakraborty/kaggle_CreditCardFraudDetection/blob/master/img/hist_V12.jpeg"></td>
  <td><img width="200" height="250" alt="boxplot - 12" src="https://github.com/jaydeepchakraborty/kaggle_CreditCardFraudDetection/blob/master/img/box_V12.jpeg"></td>
  <tr>
  <tr>
  <td><img width="200" height="250" alt="histogram - 13" src="https://github.com/jaydeepchakraborty/kaggle_CreditCardFraudDetection/blob/master/img/hist_V13.jpeg"></td>
  <td><img width="200" height="250" alt="boxplot - 13" src="https://github.com/jaydeepchakraborty/kaggle_CreditCardFraudDetection/blob/master/img/box_V13.jpeg"></td>
  <td><img width="200" height="250" alt="histogram - 14" src="https://github.com/jaydeepchakraborty/kaggle_CreditCardFraudDetection/blob/master/img/hist_V14.jpeg"></td>
  <td><img width="200" height="250" alt="boxplot - 14" src="https://github.com/jaydeepchakraborty/kaggle_CreditCardFraudDetection/blob/master/img/box_V14.jpeg"></td>
  <tr>
  <tr>
  <td><img width="200" height="250" alt="histogram - 15" src="https://github.com/jaydeepchakraborty/kaggle_CreditCardFraudDetection/blob/master/img/hist_V15.jpeg"></td>
  <td><img width="200" height="250" alt="boxplot - 15" src="https://github.com/jaydeepchakraborty/kaggle_CreditCardFraudDetection/blob/master/img/box_V15.jpeg"></td>
  <td><img width="200" height="250" alt="histogram - 16" src="https://github.com/jaydeepchakraborty/kaggle_CreditCardFraudDetection/blob/master/img/hist_V16.jpeg"></td>
  <td><img width="200" height="250" alt="boxplot - 16" src="https://github.com/jaydeepchakraborty/kaggle_CreditCardFraudDetection/blob/master/img/box_V16.jpeg"></td>
  <tr>
  <tr>
  <td><img width="200" height="250" alt="histogram - 17" src="https://github.com/jaydeepchakraborty/kaggle_CreditCardFraudDetection/blob/master/img/hist_V17.jpeg"></td>
  <td><img width="200" height="250" alt="boxplot - 17" src="https://github.com/jaydeepchakraborty/kaggle_CreditCardFraudDetection/blob/master/img/box_V17.jpeg"></td>
  <td><img width="200" height="250" alt="histogram - 18" src="https://github.com/jaydeepchakraborty/kaggle_CreditCardFraudDetection/blob/master/img/hist_V18.jpeg"></td>
  <td><img width="200" height="250" alt="boxplot - 18" src="https://github.com/jaydeepchakraborty/kaggle_CreditCardFraudDetection/blob/master/img/box_V18.jpeg"></td>
  <tr>
  <tr>
  <td><img width="200" height="250" alt="histogram - 19" src="https://github.com/jaydeepchakraborty/kaggle_CreditCardFraudDetection/blob/master/img/hist_V19.jpeg"></td>
  <td><img width="200" height="250" alt="boxplot - 19" src="https://github.com/jaydeepchakraborty/kaggle_CreditCardFraudDetection/blob/master/img/box_V19.jpeg"></td>
  <td><img width="200" height="250" alt="histogram - 20" src="https://github.com/jaydeepchakraborty/kaggle_CreditCardFraudDetection/blob/master/img/hist_V20.jpeg"></td>
  <td><img width="200" height="250" alt="boxplot - 20" src="https://github.com/jaydeepchakraborty/kaggle_CreditCardFraudDetection/blob/master/img/box_V20.jpeg"></td>
  <tr>
  <tr>
  <td><img width="200" height="250" alt="histogram - 21" src="https://github.com/jaydeepchakraborty/kaggle_CreditCardFraudDetection/blob/master/img/hist_V21.jpeg"></td>
  <td><img width="200" height="250" alt="boxplot - 21" src="https://github.com/jaydeepchakraborty/kaggle_CreditCardFraudDetection/blob/master/img/box_V21.jpeg"></td>
  <td><img width="200" height="250" alt="histogram - 22" src="https://github.com/jaydeepchakraborty/kaggle_CreditCardFraudDetection/blob/master/img/hist_V22.jpeg"></td>
  <td><img width="200" height="250" alt="boxplot - 22" src="https://github.com/jaydeepchakraborty/kaggle_CreditCardFraudDetection/blob/master/img/box_V22.jpeg"></td>
  <tr>
  <tr>
  <td><img width="200" height="250" alt="histogram - 23" src="https://github.com/jaydeepchakraborty/kaggle_CreditCardFraudDetection/blob/master/img/hist_V23.jpeg"></td>
  <td><img width="200" height="250" alt="boxplot - 23" src="https://github.com/jaydeepchakraborty/kaggle_CreditCardFraudDetection/blob/master/img/box_V23.jpeg"></td>
  <td><img width="200" height="250" alt="histogram - 24" src="https://github.com/jaydeepchakraborty/kaggle_CreditCardFraudDetection/blob/master/img/hist_V24.jpeg"></td>
  <td><img width="200" height="250" alt="boxplot - 24" src="https://github.com/jaydeepchakraborty/kaggle_CreditCardFraudDetection/blob/master/img/box_V24.jpeg"></td>
  <tr>
  <tr>
  <td><img width="200" height="250" alt="histogram - 25" src="https://github.com/jaydeepchakraborty/kaggle_CreditCardFraudDetection/blob/master/img/hist_V25.jpeg"></td>
  <td><img width="200" height="250" alt="boxplot - 25" src="https://github.com/jaydeepchakraborty/kaggle_CreditCardFraudDetection/blob/master/img/box_V25.jpeg"></td>
  <td><img width="200" height="250" alt="histogram - 26" src="https://github.com/jaydeepchakraborty/kaggle_CreditCardFraudDetection/blob/master/img/hist_V26.jpeg"></td>
  <td><img width="200" height="250" alt="boxplot - 26" src="https://github.com/jaydeepchakraborty/kaggle_CreditCardFraudDetection/blob/master/img/box_V26.jpeg"></td>
  <tr>
  <tr>
  <td><img width="200" height="250" alt="histogram - 27" src="https://github.com/jaydeepchakraborty/kaggle_CreditCardFraudDetection/blob/master/img/hist_V27.jpeg"></td>
  <td><img width="200" height="250" alt="boxplot - 27" src="https://github.com/jaydeepchakraborty/kaggle_CreditCardFraudDetection/blob/master/img/box_V27.jpeg"></td>
  <td><img width="200" height="250" alt="histogram - 28" src="https://github.com/jaydeepchakraborty/kaggle_CreditCardFraudDetection/blob/master/img/hist_V28.jpeg"></td>
  <td><img width="200" height="250" alt="boxplot - 28" src="https://github.com/jaydeepchakraborty/kaggle_CreditCardFraudDetection/blob/master/img/box_V28.jpeg"></td>
  <tr>
</table>


Module3:
--------------------------------------------



Resources and Links
--------------------------------------------
[1] http://www.sthda.com/english/wiki/visualize-correlation-matrix-using-correlogram </br>
[2] https://jcasasr.wordpress.com/2015/10/20/plotting-correlations-matrices-in-r-package/ </br>
[3] https://plot.ly/r/box-plots/
[4] http://dpmartin42.github.io/blogposts/r/imbalanced-classes-part-1
