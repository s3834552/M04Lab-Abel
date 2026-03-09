Proc logistic data=preds descending; 
Model dflt = / nofit;  
Roc "Genmod model" pred=pred; 
Run; 