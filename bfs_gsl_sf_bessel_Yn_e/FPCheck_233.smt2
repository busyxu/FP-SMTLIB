(declare-fun a_ack!781 () (_ BitVec 32))
(declare-fun b_ack!780 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (bvslt a_ack!781 #x00000000))
(assert (= #x00000000 (bvand (bvsub #x00000000 a_ack!781) #x00000001)))
(assert (not (= #x00000000 a_ack!781)))
(assert (not (= #xffffffff a_ack!781)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!780) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!780) ((_ to_fp 11 53) #x4014000000000000))))
(assert (FPCHECK_FADD_UNDERFLOW
  ((_ to_fp 11 53)
    roundNearestTiesToEven
    (bvmul (bvsub #x00000000 a_ack!781) (bvsub #x00000000 a_ack!781)))
  #x3ff0000000000000))

(check-sat)
(exit)
