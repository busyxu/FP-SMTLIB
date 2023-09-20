(declare-fun b_ack!6 () (_ BitVec 32))
(declare-fun a_ack!7 () (_ BitVec 32))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult a_ack!7 b_ack!6)))
(assert (not (= b_ack!6 a_ack!7)))
(assert (not (= #x00000000 b_ack!6)))
(assert (not (bvule a_ack!7 #x000000aa)))
(assert (bvult (bvmul #x00000002 b_ack!6) a_ack!7))
(assert (bvult (bvsub a_ack!7 (bvsub a_ack!7 b_ack!6)) #x00000040))
(assert (bvule (bvadd #x00000001 (bvsub a_ack!7 b_ack!6)) a_ack!7))
(assert (FPCHECK_FDIV_OVERFLOW
  ((_ to_fp_unsigned 11 53) roundNearestTiesToEven a_ack!7)
  ((_ to_fp_unsigned 11 53)
    roundNearestTiesToEven
    (bvsub a_ack!7 (bvsub a_ack!7 b_ack!6)))))

(check-sat)
(exit)
