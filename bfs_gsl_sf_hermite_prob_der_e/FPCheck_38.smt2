(declare-fun b_ack!163 () (_ BitVec 32))
(declare-fun a_ack!164 () (_ BitVec 32))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!163 #x00000000)))
(assert (not (bvslt a_ack!164 #x00000000)))
(assert (not (bvslt b_ack!163 a_ack!164)))
(assert (not (bvult b_ack!163 a_ack!164)))
(assert (not (= a_ack!164 b_ack!163)))
(assert (not (= #x00000000 a_ack!164)))
(assert (not (bvule b_ack!163 #x000000aa)))
(assert (bvult (bvmul #x00000002 a_ack!164) b_ack!163))
(assert (bvult (bvsub b_ack!163 (bvsub b_ack!163 a_ack!164)) #x00000040))
(assert (bvule (bvadd #x00000001 (bvsub b_ack!163 a_ack!164)) b_ack!163))
(assert (FPCHECK_FDIV_ZERO
  ((_ to_fp_unsigned 11 53) roundNearestTiesToEven b_ack!163)
  ((_ to_fp_unsigned 11 53)
    roundNearestTiesToEven
    (bvsub b_ack!163 (bvsub b_ack!163 a_ack!164)))))

(check-sat)
(exit)
