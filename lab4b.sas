Proc Genmod data=model_latest_record descending; 
Class collateral_type customer_type; 
Model dflt = utilisation ltv collateral_type borrowing_portfolio_ratio postcode_index customer_type arrears/ dist=binomial; 
Output out=preds p=pred l=lower u=upper; 
Run; 
