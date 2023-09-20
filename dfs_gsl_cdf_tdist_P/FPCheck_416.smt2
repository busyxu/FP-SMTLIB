(declare-fun mu_ack!1313 () (_ BitVec 64))
(declare-fun x_ack!1314 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.gt ((_ to_fp 11 53) mu_ack!1313) ((_ to_fp 11 53) #x403e000000000000)))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!1314)
               ((_ to_fp 11 53) x_ack!1314))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x4024000000000000)
               ((_ to_fp 11 53) mu_ack!1313))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) mu_ack!1313)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd3813813813814)
                                   a!1)
                           ((_ to_fp 11 53) #x400e04e04e04e04e)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x404755f15f15f15f)))
                   ((_ to_fp 11 53) #x407ab80000000000))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!1 a!3)
                                   ((_ to_fp 11 53) #x40a4370000000000)))
                   ((_ to_fp 11 53) #x40c0a34000000000))))
  (FPCHECK_FMUL_OVERFLOW #x0000000000000000 a!4))))))

(check-sat)
(exit)
