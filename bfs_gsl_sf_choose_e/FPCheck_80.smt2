(declare-fun b_ack!238 () (_ BitVec 32))
(declare-fun a_ack!239 () (_ BitVec 32))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult a_ack!239 b_ack!238)))
(assert (not (= b_ack!238 a_ack!239)))
(assert (not (= #x00000000 b_ack!238)))
(assert (not (bvule a_ack!239 #x000000aa)))
(assert (not (bvult (bvmul #x00000002 b_ack!238) a_ack!239)))
(assert (bvult (bvsub a_ack!239 b_ack!238) #x00000040))
(assert (bvule (bvadd #x00000001 b_ack!238) a_ack!239))
(assert (FPCHECK_FDIV_OVERFLOW
  ((_ to_fp_unsigned 11 53) roundNearestTiesToEven a_ack!239)
  ((_ to_fp_unsigned 11 53) roundNearestTiesToEven (bvsub a_ack!239 b_ack!238))))

(check-sat)
(exit)
