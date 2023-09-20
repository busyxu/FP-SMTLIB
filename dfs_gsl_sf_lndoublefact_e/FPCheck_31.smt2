(declare-fun a_ack!70 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvule a_ack!70 #x00000129)))
(assert (not (= #x00000000 (bvand a_ack!70 #x00000001))))
(assert (FPCHECK_FMUL_ACCURACY
  #x3fe0000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp_unsigned 11 53) roundNearestTiesToEven a_ack!70)
          ((_ to_fp 11 53) #x4000000000000000))))

(check-sat)
(exit)
