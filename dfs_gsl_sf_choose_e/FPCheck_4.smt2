(declare-fun b_ack!14 () (_ BitVec 32))
(declare-fun a_ack!15 () (_ BitVec 32))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult a_ack!15 b_ack!14)))
(assert (not (= b_ack!14 a_ack!15)))
(assert (not (= #x00000000 b_ack!14)))
(assert (not (bvule a_ack!15 #x000000aa)))
(assert (bvult (bvmul #x00000002 b_ack!14) a_ack!15))
(assert (bvult (bvsub a_ack!15 (bvsub a_ack!15 b_ack!14)) #x00000040))
(assert (bvule (bvadd #x00000001 (bvsub a_ack!15 b_ack!14)) a_ack!15))
(assert (FPCHECK_FDIV_ZERO
  ((_ to_fp_unsigned 11 53) roundNearestTiesToEven a_ack!15)
  ((_ to_fp_unsigned 11 53)
    roundNearestTiesToEven
    (bvsub a_ack!15 (bvsub a_ack!15 b_ack!14)))))

(check-sat)
(exit)
