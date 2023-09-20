(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun b_ack!43 () (_ BitVec 64))
(declare-fun a_ack!44 () (_ BitVec 64))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4022000000000000)
          ((_ to_fp 11 53) a_ack!44))
  b_ack!43))

(check-sat)
(exit)
