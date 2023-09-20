(declare-fun a_ack!30 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!30) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!30) ((_ to_fp 11 53) #x3e66a09e667f3bcd)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!30)
                                   ((_ to_fp 11 53) #x4008000000000000)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!30)
                           ((_ to_fp 11 53) #x4008000000000000)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!30)
                                   ((_ to_fp 11 53) #x4008000000000000))))))
  (fp.eq a!1
         (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!30)
                 ((_ to_fp 11 53) #x4008000000000000)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!30)
                                   ((_ to_fp 11 53) #x4008000000000000)))
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!30)
                                   ((_ to_fp 11 53) a_ack!30))
                           ((_ to_fp 11 53) #x4038000000000000)))))
  (FPCHECK_FMUL_UNDERFLOW #x3cb0000000000000 a!1)))

(check-sat)
(exit)
