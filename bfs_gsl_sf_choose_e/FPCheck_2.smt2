(declare-fun b_ack!10 () (_ BitVec 32))
(declare-fun a_ack!11 () (_ BitVec 32))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult a_ack!11 b_ack!10)))
(assert (not (= b_ack!10 a_ack!11)))
(assert (not (= #x00000000 b_ack!10)))
(assert (not (bvule a_ack!11 #x000000aa)))
(assert (bvult (bvmul #x00000002 b_ack!10) a_ack!11))
(assert (bvult (bvsub a_ack!11 (bvsub a_ack!11 b_ack!10)) #x00000040))
(assert (bvule (bvadd #x00000001 (bvsub a_ack!11 b_ack!10)) a_ack!11))
(assert (FPCHECK_FDIV_ACCURACY
  ((_ to_fp_unsigned 11 53) roundNearestTiesToEven a_ack!11)
  ((_ to_fp_unsigned 11 53)
    roundNearestTiesToEven
    (bvsub a_ack!11 (bvsub a_ack!11 b_ack!10)))))

(check-sat)
(exit)
