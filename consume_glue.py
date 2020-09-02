import sys
file = sys.argv[1]
with open(file, 'r') as f:
    cola = float(f.readline().split('cola_mcc: ')[1].split(',')[0])
    ax = float(f.readline().split('glue-diagnostic_all_mcc: ')[1].split(',')[0])
    mnli = float(f.readline().split('mnli_accuracy: ')[1])
    mrpc = f.readline().split('mrpc_accuracy: ')[1]
    mrpc_acc = float(mrpc.split(',')[0])
    mrpc_f1 = float(mrpc.split('mrpc_f1: ')[1].split(',')[0])
    qnli = float(f.readline().split('qnli_accuracy: ')[1])
    qqp = f.readline().split('qqp_accuracy: ')[1]
    qqp_f1 = float(qqp.split('qqp_f1: ')[1].split(',')[0])
    qqp_acc = float(qqp.split(',')[0])
    rte = float(f.readline().split('rte_accuracy: ')[1])
    sst = float(f.readline().split('sst_accuracy: ')[1])
    sts_b = f.readline().split('sts-b_pearsonr: ')[1]
    sts_b_pearson = float(sts_b.split(',')[0])
    sts_b_spearman = float(sts_b.split('spearmanr: ')[1])
    wnli = float(f.readline().split('wnli_accuracy: ')[1])
    
#print('Cola MCC\tSST Acc\tMRPC F1\tMRPC ACC\tSTS-b Pearson\tSTS-b Spearman\tQQP F1\t QQP Acc\tMNLI Acc\tQNLI acc\tRTE Acc\tWNLI Acc\tAX Matt Diagnostics Main')
print('{}\t{}\t{}\t{}\t{}\t{}\t{}\t{}\t{}\t{}\t{}\t{}\t{}'.format(cola,sst,mrpc_f1,mrpc_acc,sts_b_pearson,sts_b_spearman,qqp_f1,qqp_acc,mnli,qnli,rte,wnli,ax))