(declare-fun a_ack!95 () (_ BitVec 64))
(declare-fun b_ack!94 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (let ((a!1 ((_ extract 0 0)
             (ite (fp.isInfinite ((_ to_fp 11 53) a_ack!95)) #x01 #x00))))
  (not (= a!1 #b1))))
(assert (let ((a!1 ((_ extract 0 0)
             (ite (fp.isInfinite ((_ to_fp 11 53) b_ack!94)) #x01 #x00))))
  (not (= a!1 #b1))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!95)) (fp.abs ((_ to_fp 11 53) b_ack!94))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!95))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!94)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!95))
                           (fp.abs ((_ to_fp 11 53) b_ack!94)))
                   (fp.abs ((_ to_fp 11 53) b_ack!94)))))
  (not (fp.eq a!1 (fp.abs ((_ to_fp 11 53) a_ack!95))))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!95))
                           (fp.abs ((_ to_fp 11 53) b_ack!94))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.abs ((_ to_fp 11 53) a_ack!95))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!95))
                           (fp.abs ((_ to_fp 11 53) b_ack!94))))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) b_ack!94)))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) a_ack!95))
          (fp.abs ((_ to_fp 11 53) b_ack!94)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) a_ack!95))
          (fp.abs ((_ to_fp 11 53) b_ack!94)))))

(check-sat)
(exit)
