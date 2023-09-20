(declare-fun a_ack!127 () (_ BitVec 64))
(declare-fun b_ack!126 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (let ((a!1 ((_ extract 0 0)
             (ite (fp.isInfinite ((_ to_fp 11 53) a_ack!127)) #x01 #x00))))
  (not (= a!1 #b1))))
(assert (let ((a!1 ((_ extract 0 0)
             (ite (fp.isInfinite ((_ to_fp 11 53) b_ack!126)) #x01 #x00))))
  (not (= a!1 #b1))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!127))
       (fp.abs ((_ to_fp 11 53) b_ack!126))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!127))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!126)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!127))
                           (fp.abs ((_ to_fp 11 53) b_ack!126)))
                   (fp.abs ((_ to_fp 11 53) b_ack!126)))))
  (not (fp.eq a!1 (fp.abs ((_ to_fp 11 53) a_ack!127))))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!127))
                           (fp.abs ((_ to_fp 11 53) b_ack!126))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.abs ((_ to_fp 11 53) a_ack!127))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!127))
                           (fp.abs ((_ to_fp 11 53) b_ack!126))))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) b_ack!126)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!127))
                           (fp.abs ((_ to_fp 11 53) b_ack!126))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!127))
                           (fp.abs ((_ to_fp 11 53) b_ack!126)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!127))
                           (fp.abs ((_ to_fp 11 53) b_ack!126))))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!127))
                           (fp.abs ((_ to_fp 11 53) b_ack!126))))))
  (fp.eq a!2
         (fp.div roundNearestTiesToEven
                 (fp.abs ((_ to_fp 11 53) a_ack!127))
                 (fp.abs ((_ to_fp 11 53) b_ack!126)))))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!127))
                           (fp.abs ((_ to_fp 11 53) b_ack!126))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!127))
                           (fp.abs ((_ to_fp 11 53) b_ack!126)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!127))
                           (fp.abs ((_ to_fp 11 53) b_ack!126))))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!127))
                           (fp.abs ((_ to_fp 11 53) b_ack!126))))))
  (fp.eq a!2
         (fp.div roundNearestTiesToEven
                 (fp.abs ((_ to_fp 11 53) a_ack!127))
                 (fp.abs ((_ to_fp 11 53) b_ack!126)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!127))
                           (fp.abs ((_ to_fp 11 53) b_ack!126)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!127))
                           (fp.abs ((_ to_fp 11 53) b_ack!126))))))
  (FPCHECK_FADD_UNDERFLOW #x3ff0000000000000 a!1)))

(check-sat)
(exit)
