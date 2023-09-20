(declare-fun a_ack!3149 () (_ BitVec 32))
(declare-fun b_ack!3147 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun c_ack!3148 () (_ BitVec 64))
(assert (not (bvslt a_ack!3149 #x00000000)))
(assert (not (bvslt b_ack!3147 #x00000000)))
(assert (not (= #x00000000 a_ack!3149)))
(assert (= #x00000001 a_ack!3149))
(assert (not (bvsle #x00000002 b_ack!3147)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #xbfe0000000000000)
          ((_ to_fp 11 53) c_ack!3148))
  c_ack!3148))

(check-sat)
(exit)
