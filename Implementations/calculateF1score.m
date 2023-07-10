function f1 = calculateF1score(True_label, Pred_label)
    cm = confusionmat(True_label, Pred_label);
    cmt = cm';
    diagonal = diag(cmt);
    sum_rows = sum(cmt, 2);
    precision = diagonal ./ sum_rows;
    overall_precision = mean(precision);
    sum_col = sum(cmt, 1);
    recall = diagonal ./ sum_col';
    overall_recall = mean(recall);
    f1 = 2 * ((overall_precision * overall_recall) / (overall_precision + overall_recall));
end