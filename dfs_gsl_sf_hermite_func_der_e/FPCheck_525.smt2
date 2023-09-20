(declare-fun a_ack!3143 () (_ BitVec 32))
(declare-fun b_ack!3141 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun c_ack!3142 () (_ BitVec 64))
(assert (not (bvslt a_ack!3143 #x00000000)))
(assert (not (bvslt b_ack!3141 #x00000000)))
(assert (not (= #x00000000 a_ack!3143)))
(assert (= #x00000001 a_ack!3143))
(assert (not (bvsle #x00000002 b_ack!3141)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #xbfe0000000000000)
          ((_ to_fp 11 53) c_ack!3142))
  c_ack!3142))

(check-sat)
(exit)
