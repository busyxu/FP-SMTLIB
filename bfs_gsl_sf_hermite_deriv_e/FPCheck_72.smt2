(declare-fun b_ack!309 () (_ BitVec 32))
(declare-fun a_ack!310 () (_ BitVec 32))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!309 #x00000000)))
(assert (not (bvslt a_ack!310 #x00000000)))
(assert (not (bvslt b_ack!309 a_ack!310)))
(assert (not (bvult b_ack!309 a_ack!310)))
(assert (not (= a_ack!310 b_ack!309)))
(assert (not (= #x00000000 a_ack!310)))
(assert (not (bvule b_ack!309 #x000000aa)))
(assert (bvult (bvmul #x00000002 a_ack!310) b_ack!309))
(assert (bvult (bvsub b_ack!309 (bvsub b_ack!309 a_ack!310)) #x00000040))
(assert (bvule (bvadd #x00000001 (bvsub b_ack!309 a_ack!310)) b_ack!309))
(assert (FPCHECK_FDIV_UNDERFLOW
  ((_ to_fp_unsigned 11 53) roundNearestTiesToEven b_ack!309)
  ((_ to_fp_unsigned 11 53)
    roundNearestTiesToEven
    (bvsub b_ack!309 (bvsub b_ack!309 a_ack!310)))))

(check-sat)
(exit)
