(declare-fun a_ack!12 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun b_ack!11 () (_ BitVec 64))
(assert (not (bvslt a_ack!12 #x00000000)))
(assert (= #x00000000 a_ack!12))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #xbfe0000000000000)
          ((_ to_fp 11 53) b_ack!11))
  b_ack!11))

(check-sat)
(exit)
