(declare-fun b_ack!66 () (_ BitVec 32))
(declare-fun a_ack!67 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvult a_ack!67 b_ack!66)))
(assert (not (= b_ack!66 a_ack!67)))
(assert (not (= #x00000000 b_ack!66)))
(assert (bvult a_ack!67 (bvmul #x00000002 b_ack!66)))
(assert (not (bvule a_ack!67 #x000000aa)))
(assert (FPCHECK_FSUB_ACCURACY
  (fp.add roundNearestTiesToEven
          ((_ to_fp_unsigned 11 53) roundNearestTiesToEven a_ack!67)
          ((_ to_fp 11 53) #x3ff0000000000000))
  #x3ff0000000000000))

(check-sat)
(exit)
