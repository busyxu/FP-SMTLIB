(declare-fun a_ack!838 () (_ BitVec 32))
(declare-fun b_ack!836 () (_ BitVec 32))
(declare-fun c_ack!837 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!838 #x00000000)))
(assert (not (bvslt b_ack!836 a_ack!838)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!837) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!838 #x00000000)))
(assert (= #x00000000 a_ack!838))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!837) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!837) ((_ to_fp 11 53) #x4010000000000000)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!837))
       ((_ to_fp 11 53) #x3e60000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fc0000000000000)
                                   ((_ to_fp 11 53) c_ack!837))
                           ((_ to_fp 11 53) c_ack!837))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (FPCHECK_FMUL_OVERFLOW #x4000000000000000 a!1)))

(check-sat)
(exit)
