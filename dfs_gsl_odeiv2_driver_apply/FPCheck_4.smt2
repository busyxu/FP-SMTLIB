(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun t_ack!15 () (_ BitVec 64))
(declare-fun t1_ack!14 () (_ BitVec 64))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x3ff0000000000000
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) t1_ack!14)
          ((_ to_fp 11 53) t_ack!15))))

(check-sat)
(exit)
