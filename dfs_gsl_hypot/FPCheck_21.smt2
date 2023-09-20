(declare-fun a_ack!99 () (_ BitVec 64))
(declare-fun b_ack!98 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (let ((a!1 ((_ extract 0 0)
             (ite (fp.isInfinite ((_ to_fp 11 53) a_ack!99)) #x01 #x00))))
  (not (= a!1 #b1))))
(assert (let ((a!1 ((_ extract 0 0)
             (ite (fp.isInfinite ((_ to_fp 11 53) b_ack!98)) #x01 #x00))))
  (not (= a!1 #b1))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!99)) (fp.abs ((_ to_fp 11 53) b_ack!98))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!99))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!98)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!99))
                           (fp.abs ((_ to_fp 11 53) b_ack!98)))
                   (fp.abs ((_ to_fp 11 53) b_ack!98)))))
  (not (fp.eq a!1 (fp.abs ((_ to_fp 11 53) a_ack!99))))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!99))
                           (fp.abs ((_ to_fp 11 53) b_ack!98))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.abs ((_ to_fp 11 53) a_ack!99))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!99))
                           (fp.abs ((_ to_fp 11 53) b_ack!98))))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) b_ack!98)))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) a_ack!99))
          (fp.abs ((_ to_fp 11 53) b_ack!98)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) a_ack!99))
          (fp.abs ((_ to_fp 11 53) b_ack!98)))))

(check-sat)
(exit)
