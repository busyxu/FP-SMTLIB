(declare-fun a_ack!40 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!40))
            ((_ to_fp 11 53) #x4190000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!40)) ((_ to_fp 11 53) #x4000000000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) a_ack!40)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!40))
                           (fp.abs ((_ to_fp 11 53) a_ack!40)))
                   (fp.abs ((_ to_fp 11 53) a_ack!40)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) a_ack!40)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) a_ack!40)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!40))
                           (fp.abs ((_ to_fp 11 53) a_ack!40)))
                   (fp.abs ((_ to_fp 11 53) a_ack!40)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) a_ack!40)))))
(assert (FPCHECK_FDIV_UNDERFLOW
  #x3ff0000000000000
  (fp.add roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) a_ack!40))
          ((_ to_fp 11 53) #x417555556aab555c))))

(check-sat)
(exit)
