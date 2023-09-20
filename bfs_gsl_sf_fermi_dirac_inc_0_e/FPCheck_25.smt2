(declare-fun b_ack!96 () (_ BitVec 64))
(declare-fun a_ack!97 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!96) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!96)
                    ((_ to_fp 11 53) a_ack!97))
            ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (fp.lt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!96)
               ((_ to_fp 11 53) a_ack!97))
       ((_ to_fp 11 53) #xc014000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!96)
                                   ((_ to_fp 11 53) a_ack!97)))
                   ((_ to_fp 11 53) #x4018000000000000))))
  (FPCHECK_FSUB_OVERFLOW #x3fc999999999999a a!1)))

(check-sat)
(exit)
