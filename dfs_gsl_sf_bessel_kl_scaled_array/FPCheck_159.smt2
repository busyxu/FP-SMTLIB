(declare-fun a_ack!647 () (_ BitVec 32))
(declare-fun b_ack!646 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!647 #x00000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!646) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 a_ack!647))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!646) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!646))))))
  (FPCHECK_FMUL_OVERFLOW #x3cc0000000000000 a!1)))

(check-sat)
(exit)
