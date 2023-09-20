(declare-fun b_ack!16 () (_ BitVec 32))
(declare-fun a_ack!17 () (_ BitVec 32))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult a_ack!17 b_ack!16)))
(assert (not (= b_ack!16 a_ack!17)))
(assert (not (= #x00000000 b_ack!16)))
(assert (not (bvule a_ack!17 #x000000aa)))
(assert (bvult (bvmul #x00000002 b_ack!16) a_ack!17))
(assert (bvult (bvsub a_ack!17 (bvsub a_ack!17 b_ack!16)) #x00000040))
(assert (bvule (bvadd #x00000001 (bvsub a_ack!17 b_ack!16)) a_ack!17))
(assert (FPCHECK_FDIV_ZERO
  ((_ to_fp_unsigned 11 53) roundNearestTiesToEven a_ack!17)
  ((_ to_fp_unsigned 11 53)
    roundNearestTiesToEven
    (bvsub a_ack!17 (bvsub a_ack!17 b_ack!16)))))

(check-sat)
(exit)
