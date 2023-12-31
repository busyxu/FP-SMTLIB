(declare-fun b_ack!2217 () (_ BitVec 32))
(declare-fun a_ack!2218 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt b_ack!2217 #x00000000)))
(assert (not (bvslt a_ack!2218 #x00000000)))
(assert (not (bvslt b_ack!2217 a_ack!2218)))
(assert (not (bvult b_ack!2217 a_ack!2218)))
(assert (not (= a_ack!2218 b_ack!2217)))
(assert (not (= #x00000000 a_ack!2218)))
(assert (not (bvule b_ack!2217 #x000000aa)))
(assert (bvult (bvmul #x00000002 a_ack!2218) b_ack!2217))
(assert (not (bvult (bvsub b_ack!2217 (bvsub b_ack!2217 a_ack!2218)) #x00000040)))
(assert (not (bvult b_ack!2217 (bvsub b_ack!2217 a_ack!2218))))
(assert (not (= (bvsub b_ack!2217 a_ack!2218) b_ack!2217)))
(assert (not (= #x00000000 (bvsub b_ack!2217 a_ack!2218))))
(assert (bvult b_ack!2217 (bvmul #x00000002 (bvsub b_ack!2217 a_ack!2218))))
(assert (not (bvule b_ack!2217 #x000000aa)))
(assert (FPCHECK_FSUB_UNDERFLOW
  (fp.add roundNearestTiesToEven
          ((_ to_fp_unsigned 11 53) roundNearestTiesToEven b_ack!2217)
          ((_ to_fp 11 53) #x3ff0000000000000))
  #x3ff0000000000000))

(check-sat)
(exit)
