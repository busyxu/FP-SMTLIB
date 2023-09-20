(declare-fun a_ack!52 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!52))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!52))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) a_ack!52))
             ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!52)) ((_ to_fp 11 53) #x3cb0000000000000)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.abs ((_ to_fp 11 53) a_ack!52))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.abs ((_ to_fp 11 53) a_ack!52)))
                   (fp.abs ((_ to_fp 11 53) a_ack!52)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.abs ((_ to_fp 11 53) a_ack!52))))))
  (fp.eq a!2 (fp.abs ((_ to_fp 11 53) a_ack!52))))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) a_ack!52)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.abs ((_ to_fp 11 53) a_ack!52)))
                   (fp.abs ((_ to_fp 11 53) a_ack!52)))))
  (fp.eq (fp.div roundNearestTiesToEven a!1 (fp.abs ((_ to_fp 11 53) a_ack!52)))
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x4000000000000000)
                 (fp.abs ((_ to_fp 11 53) a_ack!52))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.abs ((_ to_fp 11 53) a_ack!52)))
                   (fp.abs ((_ to_fp 11 53) a_ack!52)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.abs ((_ to_fp 11 53) a_ack!52))))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) a_ack!52)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.abs ((_ to_fp 11 53) a_ack!52)))
                   (fp.abs ((_ to_fp 11 53) a_ack!52)))))
  (FPCHECK_FDIV_ZERO
    a!1
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) #x3ff0000000000000)
            (fp.abs ((_ to_fp 11 53) a_ack!52))))))

(check-sat)
(exit)
