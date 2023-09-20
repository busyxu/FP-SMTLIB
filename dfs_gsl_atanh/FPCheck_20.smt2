(declare-fun a_ack!29 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!29))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!29))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) a_ack!29))
             ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!29)) ((_ to_fp 11 53) #x3cb0000000000000)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.abs ((_ to_fp 11 53) a_ack!29))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.abs ((_ to_fp 11 53) a_ack!29)))
                   (fp.abs ((_ to_fp 11 53) a_ack!29)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.abs ((_ to_fp 11 53) a_ack!29))))))
  (fp.eq a!2 (fp.abs ((_ to_fp 11 53) a_ack!29))))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) a_ack!29)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.abs ((_ to_fp 11 53) a_ack!29)))
                   (fp.abs ((_ to_fp 11 53) a_ack!29)))))
  (fp.eq (fp.div roundNearestTiesToEven a!1 (fp.abs ((_ to_fp 11 53) a_ack!29)))
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x4000000000000000)
                 (fp.abs ((_ to_fp 11 53) a_ack!29))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.abs ((_ to_fp 11 53) a_ack!29)))
                   (fp.abs ((_ to_fp 11 53) a_ack!29)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.abs ((_ to_fp 11 53) a_ack!29))))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) a_ack!29)))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.abs ((_ to_fp 11 53) a_ack!29))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.abs ((_ to_fp 11 53) a_ack!29)))
                   (fp.abs ((_ to_fp 11 53) a_ack!29)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.abs ((_ to_fp 11 53) a_ack!29))))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   a!2
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.abs ((_ to_fp 11 53) a_ack!29))))))
  (not (fp.eq a!3 a!1))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.abs ((_ to_fp 11 53) a_ack!29)))
                   (fp.abs ((_ to_fp 11 53) a_ack!29)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.abs ((_ to_fp 11 53) a_ack!29))))))
  (not (fp.eq (fp.abs a!2) ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.abs ((_ to_fp 11 53) a_ack!29)))
                   (fp.abs ((_ to_fp 11 53) a_ack!29)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.abs ((_ to_fp 11 53) a_ack!29))))))
  (fp.eq (fp.div roundNearestTiesToEven a!1 a!2)
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.abs ((_ to_fp 11 53) a_ack!29)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           (fp.abs ((_ to_fp 11 53) a_ack!29)))
                   (fp.abs ((_ to_fp 11 53) a_ack!29)))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.abs ((_ to_fp 11 53) a_ack!29))))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x4000000000000000)
            (fp.abs ((_ to_fp 11 53) a_ack!29)))
    a!2))))

(check-sat)
(exit)
