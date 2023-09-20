(declare-fun p_ack!19 () (_ BitVec 64))
(declare-fun k_ack!17 () (_ BitVec 32))
(declare-fun n_ack!18 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.gt ((_ to_fp 11 53) p_ack!19) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) p_ack!19) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvule n_ack!18 k_ack!17)))
(assert (FPCHECK_FSUB_OVERFLOW
  ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!18)
  ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!17)))

(check-sat)
(exit)
