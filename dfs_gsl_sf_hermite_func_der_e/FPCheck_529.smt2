(declare-fun a_ack!3169 () (_ BitVec 32))
(declare-fun b_ack!3167 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun c_ack!3168 () (_ BitVec 64))
(assert (not (bvslt a_ack!3169 #x00000000)))
(assert (not (bvslt b_ack!3167 #x00000000)))
(assert (not (= #x00000000 a_ack!3169)))
(assert (= #x00000001 a_ack!3169))
(assert (not (bvsle #x00000002 b_ack!3167)))
(assert (FPCHECK_FADD_ACCURACY
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #xbfe0000000000000)
                  ((_ to_fp 11 53) c_ack!3168))
          ((_ to_fp 11 53) c_ack!3168))
  #x0000000000000000))

(check-sat)
(exit)
