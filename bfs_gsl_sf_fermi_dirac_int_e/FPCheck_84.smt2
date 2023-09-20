(declare-fun a_ack!263 () (_ BitVec 32))
(declare-fun b_ack!262 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!263 #xffffffff)))
(assert (= #xffffffff a_ack!263))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!262) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!262) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!262))))))
  (FPCHECK_FDIV_OVERFLOW #x3ff0000000000000 a!1)))

(check-sat)
(exit)
