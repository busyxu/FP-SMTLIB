(declare-fun a_ack!94 () (_ BitVec 32))
(declare-fun b_ack!93 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!94 #xffffffff)))
(assert (not (= #xffffffff a_ack!94)))
(assert (= #x00000000 a_ack!94))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!93) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!93) ((_ to_fp 11 53) #xc014000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!93) ((_ to_fp 11 53) #x4024000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (CF_exp (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) b_ack!93))))))
  (FPCHECK_FSUB_UNDERFLOW #x3ff0000000000000 a!1)))

(check-sat)
(exit)
