(declare-fun a_ack!12 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!12) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!12) ((_ to_fp 11 53) #x2a9965fea53d6e98))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!12) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!12)
          ((_ to_fp 11 53) a_ack!12))
  #xbe02c9758daf5cd0))

(check-sat)
(exit)
