(declare-fun b_ack!86 () (_ BitVec 64))
(declare-fun a_ack!87 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!86) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!86)
                    ((_ to_fp 11 53) a_ack!87))
            ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (fp.lt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!86)
               ((_ to_fp 11 53) a_ack!87))
       ((_ to_fp 11 53) #xc014000000000000)))
(assert (FPCHECK_FDIV_UNDERFLOW
  (CF_exp (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!86)
                  ((_ to_fp 11 53) a_ack!87)))
  #x4018000000000000))

(check-sat)
(exit)
