(declare-fun b_ack!161 () (_ BitVec 32))
(declare-fun a_ack!162 () (_ BitVec 32))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!161 #x00000000)))
(assert (not (bvslt a_ack!162 #x00000000)))
(assert (not (bvslt b_ack!161 a_ack!162)))
(assert (not (bvult b_ack!161 a_ack!162)))
(assert (not (= a_ack!162 b_ack!161)))
(assert (not (= #x00000000 a_ack!162)))
(assert (not (bvule b_ack!161 #x000000aa)))
(assert (bvult (bvmul #x00000002 a_ack!162) b_ack!161))
(assert (bvult (bvsub b_ack!161 (bvsub b_ack!161 a_ack!162)) #x00000040))
(assert (bvule (bvadd #x00000001 (bvsub b_ack!161 a_ack!162)) b_ack!161))
(assert (FPCHECK_FDIV_INVALID
  ((_ to_fp_unsigned 11 53) roundNearestTiesToEven b_ack!161)
  ((_ to_fp_unsigned 11 53)
    roundNearestTiesToEven
    (bvsub b_ack!161 (bvsub b_ack!161 a_ack!162)))))

(check-sat)
(exit)
