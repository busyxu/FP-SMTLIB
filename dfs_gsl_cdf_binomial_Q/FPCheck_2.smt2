(declare-fun p_ack!14 () (_ BitVec 64))
(declare-fun k_ack!12 () (_ BitVec 32))
(declare-fun n_ack!13 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.gt ((_ to_fp 11 53) p_ack!14) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) p_ack!14) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvule n_ack!13 k_ack!12)))
(assert (FPCHECK_FADD_ACCURACY
  ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!12)
  #x3ff0000000000000))

(check-sat)
(exit)
