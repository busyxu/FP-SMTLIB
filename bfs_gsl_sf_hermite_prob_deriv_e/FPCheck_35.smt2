(declare-fun b_ack!155 () (_ BitVec 32))
(declare-fun a_ack!156 () (_ BitVec 32))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!155 #x00000000)))
(assert (not (bvslt a_ack!156 #x00000000)))
(assert (not (bvslt b_ack!155 a_ack!156)))
(assert (not (bvult b_ack!155 a_ack!156)))
(assert (not (= a_ack!156 b_ack!155)))
(assert (not (= #x00000000 a_ack!156)))
(assert (not (bvule b_ack!155 #x000000aa)))
(assert (bvult (bvmul #x00000002 a_ack!156) b_ack!155))
(assert (bvult (bvsub b_ack!155 (bvsub b_ack!155 a_ack!156)) #x00000040))
(assert (bvule (bvadd #x00000001 (bvsub b_ack!155 a_ack!156)) b_ack!155))
(assert (FPCHECK_FDIV_UNDERFLOW
  ((_ to_fp_unsigned 11 53) roundNearestTiesToEven b_ack!155)
  ((_ to_fp_unsigned 11 53)
    roundNearestTiesToEven
    (bvsub b_ack!155 (bvsub b_ack!155 a_ack!156)))))

(check-sat)
(exit)
