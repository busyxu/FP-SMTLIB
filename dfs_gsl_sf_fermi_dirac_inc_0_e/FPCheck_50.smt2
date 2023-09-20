(declare-fun b_ack!192 () (_ BitVec 64))
(declare-fun a_ack!193 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!192) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!192)
                    ((_ to_fp 11 53) a_ack!193))
            ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!192)
                    ((_ to_fp 11 53) a_ack!193))
            ((_ to_fp 11 53) #xc014000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!192)
                    ((_ to_fp 11 53) a_ack!193))
            ((_ to_fp 11 53) #x4024000000000000))))
(assert (let ((a!1 (CF_exp (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!192)
                                   ((_ to_fp 11 53) a_ack!193))))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.add roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!192)
                    ((_ to_fp 11 53) a_ack!193))
            a!1)
    #x3cb0000000000000)))

(check-sat)
(exit)
