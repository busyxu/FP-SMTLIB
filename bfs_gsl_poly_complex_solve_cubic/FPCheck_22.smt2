(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun b_ack!47 () (_ BitVec 64))
(declare-fun a_ack!48 () (_ BitVec 64))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4022000000000000)
          ((_ to_fp 11 53) a_ack!48))
  b_ack!47))

(check-sat)
(exit)
