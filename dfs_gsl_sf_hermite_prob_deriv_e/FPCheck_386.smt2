(declare-fun b_ack!2197 () (_ BitVec 32))
(declare-fun a_ack!2198 () (_ BitVec 32))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!2197 #x00000000)))
(assert (not (bvslt a_ack!2198 #x00000000)))
(assert (not (bvslt b_ack!2197 a_ack!2198)))
(assert (not (bvult b_ack!2197 a_ack!2198)))
(assert (not (= a_ack!2198 b_ack!2197)))
(assert (not (= #x00000000 a_ack!2198)))
(assert (not (bvule b_ack!2197 #x000000aa)))
(assert (bvult (bvmul #x00000002 a_ack!2198) b_ack!2197))
(assert (bvult (bvsub b_ack!2197 (bvsub b_ack!2197 a_ack!2198)) #x00000040))
(assert (bvule (bvadd #x00000001 (bvsub b_ack!2197 a_ack!2198)) b_ack!2197))
(assert (FPCHECK_FDIV_ACCURACY
  ((_ to_fp_unsigned 11 53) roundNearestTiesToEven b_ack!2197)
  ((_ to_fp_unsigned 11 53)
    roundNearestTiesToEven
    (bvsub b_ack!2197 (bvsub b_ack!2197 a_ack!2198)))))

(check-sat)
(exit)
