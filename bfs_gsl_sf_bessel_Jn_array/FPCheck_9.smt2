(declare-fun a_ack!61 () (_ BitVec 32))
(declare-fun b_ack!59 () (_ BitVec 32))
(declare-fun c_ack!60 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!61 #x00000000)))
(assert (not (bvslt b_ack!59 a_ack!61)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!60) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt (bvadd #x00000001 b_ack!59) #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!60) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #xffffffff b_ack!59)))
(assert (not (= #x00000000 b_ack!59)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!60) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4024000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000001 b_ack!59))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FMUL_OVERFLOW a!1 #x3f48406003b2ae5a)))

(check-sat)
(exit)
