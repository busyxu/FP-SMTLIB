(declare-fun p_ack!20 () (_ BitVec 64))
(declare-fun k_ack!18 () (_ BitVec 32))
(declare-fun n_ack!19 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.gt ((_ to_fp 11 53) p_ack!20) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) p_ack!20) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvule n_ack!19 k_ack!18)))
(assert (FPCHECK_FSUB_UNDERFLOW
  ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!19)
  ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!18)))

(check-sat)
(exit)
