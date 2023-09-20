(declare-fun x_ack!71 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) x_ack!71))
            ((_ to_fp 11 53) #x3ca0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) x_ack!71))
            ((_ to_fp 11 53) #x3fe5368f08461f9f))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) x_ack!71))
            ((_ to_fp 11 53) #x4016a09e667f3bcd))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!71) ((_ to_fp 11 53) #x402124dd2f1a9fbe))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!71) ((_ to_fp 11 53) #xc042c26e978d4fdf))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!71)
                           ((_ to_fp 11 53) x_ack!71)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3f97a090772574da)
                         a!1)
                 ((_ to_fp 11 53) #x3f97a090772574da))
         a!1)))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!71)
                                   ((_ to_fp 11 53) x_ack!71))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!71)
                           ((_ to_fp 11 53) x_ack!71)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3f97a090772574da)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3f97a090772574da))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f97a090772574da)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!71)
                                   ((_ to_fp 11 53) x_ack!71))))))
  (FPCHECK_FADD_ACCURACY a!1 #x3fcba2902b84421c)))

(check-sat)
(exit)
