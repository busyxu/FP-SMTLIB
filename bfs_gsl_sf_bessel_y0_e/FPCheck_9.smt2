(declare-fun a_ack!15 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!15) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!15) ((_ to_fp 11 53) #x4010000000000000)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!15)) ((_ to_fp 11 53) #x3e60000000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) a_ack!15)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!15))
                           (fp.abs ((_ to_fp 11 53) a_ack!15)))
                   (fp.abs ((_ to_fp 11 53) a_ack!15)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) a_ack!15)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) a_ack!15)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!15))
                           (fp.abs ((_ to_fp 11 53) a_ack!15)))
                   (fp.abs ((_ to_fp 11 53) a_ack!15)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) a_ack!15)))))
(assert (FPCHECK_FMUL_OVERFLOW #x3fc0000000000000 a_ack!15))

(check-sat)
(exit)
