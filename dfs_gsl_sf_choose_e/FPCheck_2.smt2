(declare-fun b_ack!8 () (_ BitVec 32))
(declare-fun a_ack!9 () (_ BitVec 32))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult a_ack!9 b_ack!8)))
(assert (not (= b_ack!8 a_ack!9)))
(assert (not (= #x00000000 b_ack!8)))
(assert (not (bvule a_ack!9 #x000000aa)))
(assert (bvult (bvmul #x00000002 b_ack!8) a_ack!9))
(assert (bvult (bvsub a_ack!9 (bvsub a_ack!9 b_ack!8)) #x00000040))
(assert (bvule (bvadd #x00000001 (bvsub a_ack!9 b_ack!8)) a_ack!9))
(assert (FPCHECK_FDIV_ACCURACY
  ((_ to_fp_unsigned 11 53) roundNearestTiesToEven a_ack!9)
  ((_ to_fp_unsigned 11 53)
    roundNearestTiesToEven
    (bvsub a_ack!9 (bvsub a_ack!9 b_ack!8)))))

(check-sat)
(exit)
