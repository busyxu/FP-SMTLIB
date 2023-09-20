(declare-fun x_ack!59 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) x_ack!59))
            ((_ to_fp 11 53) #x3ca0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) x_ack!59))
            ((_ to_fp 11 53) #x3fe5368f08461f9f))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) x_ack!59))
            ((_ to_fp 11 53) #x4016a09e667f3bcd))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!59) ((_ to_fp 11 53) #x402124dd2f1a9fbe))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!59) ((_ to_fp 11 53) #xc042c26e978d4fdf))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!59)
                           ((_ to_fp 11 53) x_ack!59)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3f97a090772574da)
                         a!1)
                 ((_ to_fp 11 53) #x3f97a090772574da))
         a!1)))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!59)
                                   ((_ to_fp 11 53) x_ack!59))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!59)
                           ((_ to_fp 11 53) x_ack!59)))))
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
                                   ((_ to_fp 11 53) x_ack!59)
                                   ((_ to_fp 11 53) x_ack!59))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3fcba2902b84421c))
                 a!1)
         ((_ to_fp 11 53) #x3fcba2902b84421c))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3f97a090772574da)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!59)
                                   ((_ to_fp 11 53) x_ack!59))))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x3fcba2902b84421c))
                 ((_ to_fp 11 53) #x3fcba2902b84421c))
         a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!59)
                           ((_ to_fp 11 53) x_ack!59)))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.add roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3f97a090772574da)
                    a!1)
            ((_ to_fp 11 53) #x3fcba2902b84421c))
    a!1)))

(check-sat)
(exit)
