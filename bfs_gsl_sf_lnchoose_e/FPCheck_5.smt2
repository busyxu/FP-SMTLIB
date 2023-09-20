(declare-fun b_ack!16 () (_ BitVec 32))
(declare-fun a_ack!17 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvult a_ack!17 b_ack!16)))
(assert (not (= b_ack!16 a_ack!17)))
(assert (not (= #x00000000 b_ack!16)))
(assert (not (bvult a_ack!17 (bvmul #x00000002 b_ack!16))))
(assert (not (bvule a_ack!17 #x000000aa)))
(assert (FPCHECK_FSUB_ACCURACY
  (fp.add roundNearestTiesToEven
          ((_ to_fp_unsigned 11 53) roundNearestTiesToEven a_ack!17)
          ((_ to_fp 11 53) #x3ff0000000000000))
  #x3ff0000000000000))

(check-sat)
(exit)
