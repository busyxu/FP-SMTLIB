(declare-fun a_ack!91 () (_ BitVec 64))
(declare-fun b_ack!90 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (let ((a!1 ((_ extract 0 0)
             (ite (fp.isInfinite ((_ to_fp 11 53) a_ack!91)) #x01 #x00))))
  (not (= a!1 #b1))))
(assert (let ((a!1 ((_ extract 0 0)
             (ite (fp.isInfinite ((_ to_fp 11 53) b_ack!90)) #x01 #x00))))
  (not (= a!1 #b1))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!91)) (fp.abs ((_ to_fp 11 53) b_ack!90))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!91))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!90)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!91))
                           (fp.abs ((_ to_fp 11 53) b_ack!90)))
                   (fp.abs ((_ to_fp 11 53) b_ack!90)))))
  (not (fp.eq a!1 (fp.abs ((_ to_fp 11 53) a_ack!91))))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!91))
                           (fp.abs ((_ to_fp 11 53) b_ack!90))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.abs ((_ to_fp 11 53) a_ack!91))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!91))
                           (fp.abs ((_ to_fp 11 53) b_ack!90))))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) b_ack!90)))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) a_ack!91))
          (fp.abs ((_ to_fp 11 53) b_ack!90)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) a_ack!91))
          (fp.abs ((_ to_fp 11 53) b_ack!90)))))

(check-sat)
(exit)
