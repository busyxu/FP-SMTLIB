(declare-fun x0_ack!521 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (let ((a!1 (fp.eq (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3e50000000000000)
                          (fp.abs ((_ to_fp 11 53) x0_ack!521)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x0_ack!521)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x0_ack!521))))))
  (fp.eq (fp.sub roundNearestTiesToEven a!1 ((_ to_fp 11 53) x0_ack!521))
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3e50000000000000)
                 (fp.abs ((_ to_fp 11 53) x0_ack!521))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x0_ack!521)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x0_ack!521))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x0_ack!521))))))
  (fp.eq a!2 ((_ to_fp 11 53) x0_ack!521)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x0_ack!521)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x0_ack!521))))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x0_ack!521)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x0_ack!521))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) x0_ack!521)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3e50000000000000)
                           (fp.abs ((_ to_fp 11 53) x0_ack!521))))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) x0_ack!521))))))
  (FPCHECK_FDIV_ACCURACY
    a!2
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3e50000000000000)
            (fp.abs ((_ to_fp 11 53) x0_ack!521)))))))

(check-sat)
(exit)
