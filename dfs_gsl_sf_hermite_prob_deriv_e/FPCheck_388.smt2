(declare-fun b_ack!2203 () (_ BitVec 32))
(declare-fun a_ack!2204 () (_ BitVec 32))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!2203 #x00000000)))
(assert (not (bvslt a_ack!2204 #x00000000)))
(assert (not (bvslt b_ack!2203 a_ack!2204)))
(assert (not (bvult b_ack!2203 a_ack!2204)))
(assert (not (= a_ack!2204 b_ack!2203)))
(assert (not (= #x00000000 a_ack!2204)))
(assert (not (bvule b_ack!2203 #x000000aa)))
(assert (bvult (bvmul #x00000002 a_ack!2204) b_ack!2203))
(assert (bvult (bvsub b_ack!2203 (bvsub b_ack!2203 a_ack!2204)) #x00000040))
(assert (bvule (bvadd #x00000001 (bvsub b_ack!2203 a_ack!2204)) b_ack!2203))
(assert (FPCHECK_FDIV_ZERO
  ((_ to_fp_unsigned 11 53) roundNearestTiesToEven b_ack!2203)
  ((_ to_fp_unsigned 11 53)
    roundNearestTiesToEven
    (bvsub b_ack!2203 (bvsub b_ack!2203 a_ack!2204)))))

(check-sat)
(exit)
