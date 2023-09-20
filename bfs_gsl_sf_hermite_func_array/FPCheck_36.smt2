(declare-fun a_ack!133 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun b_ack!132 () (_ BitVec 64))
(assert (not (bvslt a_ack!133 #x00000000)))
(assert (not (= #x00000000 a_ack!133)))
(assert (= #x00000001 a_ack!133))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #xbfe0000000000000)
          ((_ to_fp 11 53) b_ack!132))
  b_ack!132))

(check-sat)
(exit)
