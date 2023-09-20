(declare-fun a_ack!6 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (= #x00000000 a_ack!6)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.add roundNearestTiesToEven
          ((_ to_fp_unsigned 11 53) roundNearestTiesToEven a_ack!6)
          ((_ to_fp 11 53) #x3fd0000000000000))
  #x400921fb54442d18))

(check-sat)
(exit)
