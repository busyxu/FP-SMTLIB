(declare-fun w0_ack!265 () (_ BitVec 64))
(declare-fun w1_ack!262 () (_ BitVec 64))
(declare-fun w2_ack!263 () (_ BitVec 64))
(declare-fun w3_ack!264 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.gt ((_ to_fp 11 53) w0_ack!265) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) w1_ack!262) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) w2_ack!263) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) w3_ack!264) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) w0_ack!265) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) w1_ack!262) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) w2_ack!263) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) w3_ack!264) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) w1_ack!262)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           ((_ to_fp 11 53) w1_ack!262)))))
  (FPCHECK_FMUL_ACCURACY
    (fp.add roundNearestTiesToEven
            ((_ to_fp 11 53) #x0000000000000000)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x409ef00000000000)
                    a!1))
    (fp.add roundNearestTiesToEven
            ((_ to_fp 11 53) #x0000000000000000)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4026000000000000)
                    a!1)))))

(check-sat)
(exit)
