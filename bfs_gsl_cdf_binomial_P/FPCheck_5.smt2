(declare-fun p_ack!28 () (_ BitVec 64))
(declare-fun k_ack!26 () (_ BitVec 32))
(declare-fun n_ack!27 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.gt ((_ to_fp 11 53) p_ack!28) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) p_ack!28) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvule n_ack!27 k_ack!26)))
(assert (FPCHECK_FSUB_ACCURACY
  ((_ to_fp_unsigned 11 53) roundNearestTiesToEven n_ack!27)
  ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!26)))

(check-sat)
(exit)
