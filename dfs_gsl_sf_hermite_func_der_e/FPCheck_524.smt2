(declare-fun a_ack!3137 () (_ BitVec 32))
(declare-fun b_ack!3135 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun c_ack!3136 () (_ BitVec 64))
(assert (not (bvslt a_ack!3137 #x00000000)))
(assert (not (bvslt b_ack!3135 #x00000000)))
(assert (not (= #x00000000 a_ack!3137)))
(assert (= #x00000001 a_ack!3137))
(assert (not (bvsle #x00000002 b_ack!3135)))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #xbfe0000000000000)
          ((_ to_fp 11 53) c_ack!3136))
  c_ack!3136))

(check-sat)
(exit)
