(declare-fun b_ack!566 () (_ BitVec 32))
(declare-fun a_ack!567 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt b_ack!566 #x00000000)))
(assert (not (bvslt a_ack!567 #x00000000)))
(assert (not (bvslt b_ack!566 a_ack!567)))
(assert (not (bvult b_ack!566 a_ack!567)))
(assert (not (= a_ack!567 b_ack!566)))
(assert (not (= #x00000000 a_ack!567)))
(assert (not (bvule b_ack!566 #x000000aa)))
(assert (bvult (bvmul #x00000002 a_ack!567) b_ack!566))
(assert (not (bvult (bvsub b_ack!566 (bvsub b_ack!566 a_ack!567)) #x00000040)))
(assert (not (bvult b_ack!566 (bvsub b_ack!566 a_ack!567))))
(assert (not (= (bvsub b_ack!566 a_ack!567) b_ack!566)))
(assert (not (= #x00000000 (bvsub b_ack!566 a_ack!567))))
(assert (bvult b_ack!566 (bvmul #x00000002 (bvsub b_ack!566 a_ack!567))))
(assert (not (bvule b_ack!566 #x000000aa)))
(assert (FPCHECK_FSUB_ACCURACY
  (fp.add roundNearestTiesToEven
          ((_ to_fp_unsigned 11 53) roundNearestTiesToEven b_ack!566)
          ((_ to_fp 11 53) #x3ff0000000000000))
  #x3ff0000000000000))

(check-sat)
(exit)
