(declare-fun a_ack!198 () (_ BitVec 32))
(declare-fun b_ack!197 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!198 #xffffffff)))
(assert (not (= #xffffffff a_ack!198)))
(assert (= #x00000000 a_ack!198))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!197) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!197) ((_ to_fp 11 53) #xc014000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!197) ((_ to_fp 11 53) #x4024000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!197)
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!197))))))
  (FPCHECK_FMUL_OVERFLOW a!1 #x3cb0000000000000)))

(check-sat)
(exit)
