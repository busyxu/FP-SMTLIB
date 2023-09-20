(declare-fun mu_ack!549 () (_ BitVec 64))
(declare-fun x_ack!550 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.gt ((_ to_fp 11 53) mu_ack!549) ((_ to_fp 11 53) #x403e000000000000)))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!550)
               ((_ to_fp 11 53) x_ack!550))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x4024000000000000)
               ((_ to_fp 11 53) mu_ack!549))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) mu_ack!549)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x0000000000000000)))
      (a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4048000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) mu_ack!549)
                                   ((_ to_fp 11 53) #x3fe0000000000000)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) mu_ack!549)
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd105b7ebc93598)
                                   a!1)
                           ((_ to_fp 11 53) #x4015cc7d5cc7d5cc))))
      (a!8 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd18de5ab277f45)
                                   a!1)
                           ((_ to_fp 11 53) #x4011ff0656cbd324))))
      (a!13 (fp.mul roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd3813813813814)
                                    a!1)
                            ((_ to_fp 11 53) #x400e04e04e04e04e))))
      (a!17 (fp.mul roundNearestTiesToEven
                    a!1
                    (fp.add roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x3fd999999999999a)
                                    a!1)
                            ((_ to_fp 11 53) #x400a666666666666)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x405e8cfd07ab3e32)))
                   ((_ to_fp 11 53) #x40a26575b189a43d)))
      (a!9 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   a!8
                                   ((_ to_fp 11 53) #x40539ce434a9b101)))
                   ((_ to_fp 11 53) #x40917ad7c57c57c5)))
      (a!14 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!1
                            (fp.add roundNearestTiesToEven
                                    a!13
                                    ((_ to_fp 11 53) #x404755f15f15f15f)))
                    ((_ to_fp 11 53) #x407ab80000000000)))
      (a!18 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!1
                            (fp.add roundNearestTiesToEven
                                    a!17
                                    ((_ to_fp 11 53) #x4038000000000000)))
                    ((_ to_fp 11 53) #x4055600000000000))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!1 a!3)
                                   ((_ to_fp 11 53) #x40e25f2049f0d6e8)))
                   ((_ to_fp 11 53) #x411db9508ea0ea0f)))
      (a!10 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!1
                            (fp.add roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!1 a!9)
                                    ((_ to_fp 11 53) #x40c831cccccccccd)))
                    ((_ to_fp 11 53) #x40f8aa08cccccccd)))
      (a!15 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!1
                            (fp.add roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!1 a!14)
                                    ((_ to_fp 11 53) #x40a4370000000000)))
                    ((_ to_fp 11 53) #x40c0a34000000000))))
(let ((a!5 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!1 a!4)
                                   ((_ to_fp 11 53) #x4152ec99a999999a)))
                   ((_ to_fp 11 53) #x41821c0f1c666666)))
      (a!11 (fp.add roundNearestTiesToEven
                    (fp.mul roundNearestTiesToEven
                            a!1
                            (fp.add roundNearestTiesToEven
                                    (fp.mul roundNearestTiesToEven a!1 a!10)
                                    ((_ to_fp 11 53) #x4121130c00000000)))
                    ((_ to_fp 11 53) #x413aee5fa0000000))))
(let ((a!6 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!1 a!5)
                                   ((_ to_fp 11 53) #x41a80574ddc00000)))
                   ((_ to_fp 11 53) #x41c28cd30a500000))))
(let ((a!12 (fp.add roundNearestTiesToEven
                    (fp.div roundNearestTiesToEven
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!6)
                            a!7)
                    (fp.mul roundNearestTiesToEven
                            ((_ to_fp 11 53) #x8000000000000000)
                            a!11))))
(let ((a!16 (fp.div roundNearestTiesToEven
                    (fp.add roundNearestTiesToEven
                            (fp.div roundNearestTiesToEven a!12 a!7)
                            (fp.mul roundNearestTiesToEven
                                    ((_ to_fp 11 53) #x0000000000000000)
                                    a!15))
                    a!7)))
  (FPCHECK_FADD_OVERFLOW
    a!16
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x8000000000000000) a!18)))))))))))

(check-sat)
(exit)
