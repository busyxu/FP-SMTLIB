(declare-fun a_ack!143 () (_ BitVec 32))
(declare-fun b_ack!142 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!143 #xffffffff)))
(assert (not (= #xffffffff a_ack!143)))
(assert (= #x00000000 a_ack!143))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!142) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!142) ((_ to_fp 11 53) #xc014000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!142) ((_ to_fp 11 53) #x4024000000000000))))
(assert (FPCHECK_FADD_ACCURACY
  b_ack!142
  (CF_exp (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x8000000000000000)
                  ((_ to_fp 11 53) b_ack!142)))))

(check-sat)
(exit)
