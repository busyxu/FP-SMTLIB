(declare-fun w0_ack!518 () (_ BitVec 64))
(declare-fun w1_ack!515 () (_ BitVec 64))
(declare-fun w2_ack!516 () (_ BitVec 64))
(declare-fun w3_ack!517 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.gt ((_ to_fp 11 53) w0_ack!518) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) w1_ack!515) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) w2_ack!516) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) w3_ack!517) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) w0_ack!518) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) w1_ack!515) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x409ef00000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) w1_ack!515)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) w1_ack!515))))))
  (FPCHECK_FMUL_ACCURACY
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) #x409ef00000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x0000000000000000)
                    a!1))
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) #x409ef00000000000)
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) #x0000000000000000)
                    a!1)))))

(check-sat)
(exit)
