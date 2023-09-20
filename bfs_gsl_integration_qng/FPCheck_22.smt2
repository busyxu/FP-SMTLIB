(declare-fun a_ack!91 () (_ BitVec 64))
(declare-fun b_ack!89 () (_ BitVec 64))
(declare-fun epsabs_ack!90 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!89)
                                   ((_ to_fp 11 53) a_ack!91))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!90)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!89)
                                   ((_ to_fp 11 53) a_ack!91))))))
  (FPCHECK_FMUL_OVERFLOW
    #x3fc321082b7cd10f
    (fp.abs (fp.div roundNearestTiesToEven
                    (CF_log a!1)
                    ((_ to_fp 11 53) #x7ff8000000000001))))))

(check-sat)
(exit)
