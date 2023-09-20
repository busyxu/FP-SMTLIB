(declare-fun a_ack!203 () (_ BitVec 32))
(declare-fun b_ack!201 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun c_ack!202 () (_ BitVec 64))
(assert (not (bvslt a_ack!203 #x00000000)))
(assert (not (bvslt b_ack!201 #x00000000)))
(assert (not (= #x00000000 a_ack!203)))
(assert (= #x00000001 a_ack!203))
(assert (not (bvsle #x00000002 b_ack!201)))
(assert (FPCHECK_FSUB_ACCURACY
  #x0000000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) c_ack!202)
          ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
