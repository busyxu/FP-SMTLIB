(declare-fun a_ack!111 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun b_ack!110 () (_ BitVec 64))
(assert (fp.eq ((_ to_fp 11 53) a_ack!111) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4000000000000000)
          ((_ to_fp 11 53) b_ack!110))
  b_ack!110))

(check-sat)
(exit)
