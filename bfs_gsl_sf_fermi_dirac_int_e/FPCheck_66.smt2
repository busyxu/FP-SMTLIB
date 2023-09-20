(declare-fun a_ack!214 () (_ BitVec 32))
(declare-fun b_ack!213 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (bvslt a_ack!214 #xffffffff))
(assert (not (bvsle #xffffffff a_ack!214)))
(assert (not (bvslt a_ack!214 #xffffff9b)))
(assert (not (bvsle #x00000002 (bvsub #xffffffff a_ack!214))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!213) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (bvsle #x00000002 (bvsub #xffffffff a_ack!214))))
(assert (FPCHECK_FADD_ACCURACY
  #x3ff0000000000000
  (CF_exp (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x8000000000000000)
                  ((_ to_fp 11 53) b_ack!213)))))

(check-sat)
(exit)
