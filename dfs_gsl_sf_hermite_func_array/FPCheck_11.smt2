(declare-fun a_ack!42 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun b_ack!41 () (_ BitVec 64))
(assert (not (bvslt a_ack!42 #x00000000)))
(assert (not (= #x00000000 a_ack!42)))
(assert (= #x00000001 a_ack!42))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #xbfe0000000000000)
          ((_ to_fp 11 53) b_ack!41))
  b_ack!41))

(check-sat)
(exit)
