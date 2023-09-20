(declare-fun p_ack!8 () (_ BitVec 64))
(declare-fun k_ack!6 () (_ BitVec 32))
(declare-fun n_ack!7 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.gt ((_ to_fp 11 53) p_ack!8) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) p_ack!8) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvule n_ack!7 k_ack!6)))
(assert (FPCHECK_FADD_UNDERFLOW
  ((_ to_fp_unsigned 11 53) roundNearestTiesToEven k_ack!6)
  #x3ff0000000000000))

(check-sat)
(exit)
