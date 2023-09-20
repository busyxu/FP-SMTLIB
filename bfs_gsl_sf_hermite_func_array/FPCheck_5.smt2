(declare-fun a_ack!20 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun b_ack!19 () (_ BitVec 64))
(assert (not (bvslt a_ack!20 #x00000000)))
(assert (= #x00000000 a_ack!20))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #xbfe0000000000000)
          ((_ to_fp 11 53) b_ack!19))
  b_ack!19))

(check-sat)
(exit)
