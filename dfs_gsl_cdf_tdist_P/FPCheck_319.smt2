(declare-fun mu_ack!1119 () (_ BitVec 64))
(declare-fun x_ack!1120 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (fp.gt ((_ to_fp 11 53) mu_ack!1119) ((_ to_fp 11 53) #x403e000000000000)))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!1120)
               ((_ to_fp 11 53) x_ack!1120))
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x4024000000000000)
               ((_ to_fp 11 53) mu_ack!1119))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) mu_ack!1119)
                           ((_ to_fp 11 53) #x3fe0000000000000))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   a!1
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fd105b7ebc93598)
                                   a!1)
                           ((_ to_fp 11 53) #x4015cc7d5cc7d5cc)))))
(let ((a!3 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x405e8cfd07ab3e32)))
                   ((_ to_fp 11 53) #x40a26575b189a43d))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   (fp.mul roundNearestTiesToEven a!1 a!3)
                                   ((_ to_fp 11 53) #x40e25f2049f0d6e8)))
                   ((_ to_fp 11 53) #x411db9508ea0ea0f))))
  (FPCHECK_FADD_OVERFLOW
    (fp.mul roundNearestTiesToEven a!1 a!4)
    #x4152ec99a999999a))))))

(check-sat)
(exit)
