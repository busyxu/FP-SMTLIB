(declare-fun a_ack!1128 () (_ BitVec 32))
(declare-fun b_ack!1127 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!1128 #x00000000)))
(assert (not (= #x00000000 a_ack!1128)))
(assert (not (= #x00000001 a_ack!1128)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1127) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.gt (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x4000000000000000)
                                  ((_ to_fp 11 53) b_ack!1127)))
                  ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!1)))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4000000000000000)
          (fp.abs ((_ to_fp 11 53) b_ack!1127)))
  #x3cb0000000000000))

(check-sat)
(exit)
