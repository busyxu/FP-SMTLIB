(declare-fun a_ack!15 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvule a_ack!15 #x00000129)))
(assert (= #x00000000 (bvand a_ack!15 #x00000001)))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          ((_ to_fp_unsigned 11 53) roundNearestTiesToEven a_ack!15))
  #x3ff0000000000000))

(check-sat)
(exit)
