(declare-fun a_ack!544 () (_ BitVec 32))
(declare-fun b_ack!542 () (_ BitVec 32))
(declare-fun c_ack!543 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvslt a_ack!544 #x00000000)))
(assert (not (bvslt b_ack!542 a_ack!544)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!543) ((_ to_fp 11 53) #x0000000000000000))))
(assert (bvslt (bvadd #x00000001 b_ack!542) #x00000000))
(assert (= #x00000000 (bvand (bvsub #xffffffff b_ack!542) #x00000001)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!543) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff b_ack!542)))
(assert (not (= #xfffffffe b_ack!542)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!543) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvsub #xffffffff b_ack!542))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FMUL_UNDERFLOW a!1 #x3f48406003b2ae5a)))

(check-sat)
(exit)
