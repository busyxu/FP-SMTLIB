(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun a_ack!15 () (_ BitVec 64))
(declare-fun b_ack!14 () (_ BitVec 64))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x3fe0000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!14)
          ((_ to_fp 11 53) a_ack!15))))

(check-sat)
(exit)
