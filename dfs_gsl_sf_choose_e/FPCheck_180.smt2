(declare-fun b_ack!544 () (_ BitVec 32))
(declare-fun a_ack!545 () (_ BitVec 32))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult a_ack!545 b_ack!544)))
(assert (not (= b_ack!544 a_ack!545)))
(assert (not (= #x00000000 b_ack!544)))
(assert (not (bvule a_ack!545 #x000000aa)))
(assert (not (bvult (bvmul #x00000002 b_ack!544) a_ack!545)))
(assert (bvult (bvsub a_ack!545 b_ack!544) #x00000040))
(assert (bvule (bvadd #x00000001 b_ack!544) a_ack!545))
(assert (FPCHECK_FDIV_OVERFLOW
  ((_ to_fp_unsigned 11 53) roundNearestTiesToEven a_ack!545)
  ((_ to_fp_unsigned 11 53) roundNearestTiesToEven (bvsub a_ack!545 b_ack!544))))

(check-sat)
(exit)
