(declare-fun b_ack!2201 () (_ BitVec 32))
(declare-fun a_ack!2202 () (_ BitVec 32))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!2201 #x00000000)))
(assert (not (bvslt a_ack!2202 #x00000000)))
(assert (not (bvslt b_ack!2201 a_ack!2202)))
(assert (not (bvult b_ack!2201 a_ack!2202)))
(assert (not (= a_ack!2202 b_ack!2201)))
(assert (not (= #x00000000 a_ack!2202)))
(assert (not (bvule b_ack!2201 #x000000aa)))
(assert (bvult (bvmul #x00000002 a_ack!2202) b_ack!2201))
(assert (bvult (bvsub b_ack!2201 (bvsub b_ack!2201 a_ack!2202)) #x00000040))
(assert (bvule (bvadd #x00000001 (bvsub b_ack!2201 a_ack!2202)) b_ack!2201))
(assert (FPCHECK_FDIV_INVALID
  ((_ to_fp_unsigned 11 53) roundNearestTiesToEven b_ack!2201)
  ((_ to_fp_unsigned 11 53)
    roundNearestTiesToEven
    (bvsub b_ack!2201 (bvsub b_ack!2201 a_ack!2202)))))

(check-sat)
(exit)
