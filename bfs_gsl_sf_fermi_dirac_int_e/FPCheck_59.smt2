(declare-fun a_ack!194 () (_ BitVec 32))
(declare-fun b_ack!193 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!194 #xffffffff)))
(assert (not (= #xffffffff a_ack!194)))
(assert (= #x00000000 a_ack!194))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!193) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!193) ((_ to_fp 11 53) #xc014000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!193) ((_ to_fp 11 53) #x4024000000000000))))
(assert (FPCHECK_FADD_UNDERFLOW
  b_ack!193
  (CF_exp (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x8000000000000000)
                  ((_ to_fp 11 53) b_ack!193)))))

(check-sat)
(exit)
