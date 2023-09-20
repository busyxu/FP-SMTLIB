(declare-fun b_ack!4 () (_ BitVec 32))
(declare-fun a_ack!5 () (_ BitVec 32))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult a_ack!5 b_ack!4)))
(assert (not (= b_ack!4 a_ack!5)))
(assert (not (= #x00000000 b_ack!4)))
(assert (not (bvule a_ack!5 #x000000aa)))
(assert (bvult (bvmul #x00000002 b_ack!4) a_ack!5))
(assert (bvult (bvsub a_ack!5 (bvsub a_ack!5 b_ack!4)) #x00000040))
(assert (bvule (bvadd #x00000001 (bvsub a_ack!5 b_ack!4)) a_ack!5))
(assert (FPCHECK_FDIV_OVERFLOW
  ((_ to_fp_unsigned 11 53) roundNearestTiesToEven a_ack!5)
  ((_ to_fp_unsigned 11 53)
    roundNearestTiesToEven
    (bvsub a_ack!5 (bvsub a_ack!5 b_ack!4)))))

(check-sat)
(exit)
