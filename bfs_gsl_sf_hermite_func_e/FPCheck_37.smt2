(declare-fun a_ack!166 () (_ BitVec 32))
(declare-fun b_ack!165 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt a_ack!166 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!165) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!166)))
(assert (= #x00000001 a_ack!166))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #xbfe0000000000000)
          ((_ to_fp 11 53) b_ack!165))
  b_ack!165))

(check-sat)
(exit)
