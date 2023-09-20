(declare-fun b_ack!252 () (_ BitVec 64))
(declare-fun a_ack!253 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!252) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!252)
                    ((_ to_fp 11 53) a_ack!253))
            ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!252)
                    ((_ to_fp 11 53) a_ack!253))
            ((_ to_fp 11 53) #xc014000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!252)
                    ((_ to_fp 11 53) a_ack!253))
            ((_ to_fp 11 53) #x4024000000000000))))
(assert (let ((a!1 (CF_exp (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!252)
                                   ((_ to_fp 11 53) a_ack!253))))))
  (FPCHECK_FADD_OVERFLOW
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) b_ack!252)
            ((_ to_fp 11 53) a_ack!253))
    a!1)))

(check-sat)
(exit)
