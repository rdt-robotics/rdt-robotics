## Comparison with Baselines

We benchmark our pre-trained RDT model (RDT (ours)) against baselines including RDT without pre-training (RDT (scratch)), OpenVLA, and ACT.

```
柱状图
```

Here are some sample comparative videos:

```
第1行排列1-4.mp4，每行四个
caption分别是 ⚠️ACT            ❌OpenVLA   ⚠️RDT (scratch)    ✅RDT (ours)
       (wrong direction)    (grab failed)   (not straight)    (straight route)
第2行排列5-7.mp4，每行3个，大小一样，调整间距使其与四个的行一样宽
caption分别是 ⚠️OpenVLA     ⚠️RDT (scratch)              ✅RDT (ours)
            (pour failed)     (wrong water level)    (correct water level)
第3行排列8-11.mp4，每行四个
caption分别是 ❌ACT        ❌OpenVLA    ❌RDT (scratch)   ✅RDT (ours)
          (grab failed)  (grab failed) (grab failed)      (pour success)
第四行排列12-15.mp4，每行四个
caption分别是 ❌ACT        ❌OpenVLA    ❌RDT (scratch)   ✅RDT (ours)
          (grab failed)  (grab failed)  (fold failed)      (fold success)
```

