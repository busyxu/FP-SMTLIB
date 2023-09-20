(declare-fun a_ack!47 () (_ BitVec 32))
(declare-fun b_ack!46 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!47 #xffffffff)))
(assert (not (= #xffffffff a_ack!47)))
(assert (= #x00000000 a_ack!47))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!46) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!46) ((_ to_fp 11 53) #xc014000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!46) ((_ to_fp 11 53) #x4024000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (CF_exp (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x8000000000000000)
                  ((_ to_fp 11 53) b_ack!46)))
  (CF_exp (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x8000000000000000)
                  ((_ to_fp 11 53) b_ack!46)))))

(check-sat)
(exit)
