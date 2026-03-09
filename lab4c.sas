Proc Genmod data=model_validation descending; 
Weight validation_sample; 
Model dflt = utilisation ltv borrowing_portfolio_ratio postcode_index arrears_flag  
relationship_length/ dist=binomial; 
Output out=preds(where=(validation_sample=0)) p=pred l=lower u=upper; 
Run; 