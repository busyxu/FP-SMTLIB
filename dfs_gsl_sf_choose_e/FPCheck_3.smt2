(declare-fun b_ack!12 () (_ BitVec 32))
(declare-fun a_ack!13 () (_ BitVec 32))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult a_ack!13 b_ack!12)))
(assert (not (= b_ack!12 a_ack!13)))
(assert (not (= #x00000000 b_ack!12)))
(assert (not (bvule a_ack!13 #x000000aa)))
(assert (bvult (bvmul #x00000002 b_ack!12) a_ack!13))
(assert (bvult (bvsub a_ack!13 (bvsub a_ack!13 b_ack!12)) #x00000040))
(assert (bvule (bvadd #x00000001 (bvsub a_ack!13 b_ack!12)) a_ack!13))
(assert (FPCHECK_FDIV_INVALID
  ((_ to_fp_unsigned 11 53) roundNearestTiesToEven a_ack!13)
  ((_ to_fp_unsigned 11 53)
    roundNearestTiesToEven
    (bvsub a_ack!13 (bvsub a_ack!13 b_ack!12)))))

(check-sat)
(exit)
