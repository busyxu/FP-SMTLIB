(declare-fun b_ack!153 () (_ BitVec 32))
(declare-fun a_ack!154 () (_ BitVec 32))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!153 #x00000000)))
(assert (not (bvslt a_ack!154 #x00000000)))
(assert (not (bvslt b_ack!153 a_ack!154)))
(assert (not (bvult b_ack!153 a_ack!154)))
(assert (not (= a_ack!154 b_ack!153)))
(assert (not (= #x00000000 a_ack!154)))
(assert (not (bvule b_ack!153 #x000000aa)))
(assert (bvult (bvmul #x00000002 a_ack!154) b_ack!153))
(assert (bvult (bvsub b_ack!153 (bvsub b_ack!153 a_ack!154)) #x00000040))
(assert (bvule (bvadd #x00000001 (bvsub b_ack!153 a_ack!154)) b_ack!153))
(assert (FPCHECK_FDIV_OVERFLOW
  ((_ to_fp_unsigned 11 53) roundNearestTiesToEven b_ack!153)
  ((_ to_fp_unsigned 11 53)
    roundNearestTiesToEven
    (bvsub b_ack!153 (bvsub b_ack!153 a_ack!154)))))

(check-sat)
(exit)
