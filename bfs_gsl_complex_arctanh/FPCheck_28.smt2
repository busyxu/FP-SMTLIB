(declare-fun y_ack!100 () (_ BitVec 64))
(declare-fun x_ack!101 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) y_ack!100) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) x_ack!101))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x_ack!101)))
                   ((_ to_fp 11 53) #x3ff000008637bd06))))
  (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3fb999999999999a))))
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbff0000000000000)
                    ((_ to_fp 11 53) y_ack!100))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  #x4000000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #xbff0000000000000)
          ((_ to_fp 11 53) y_ack!100))))

(check-sat)
(exit)
