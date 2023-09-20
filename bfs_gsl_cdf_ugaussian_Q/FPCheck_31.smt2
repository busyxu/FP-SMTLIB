(declare-fun x_ack!56 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) x_ack!56))
            ((_ to_fp 11 53) #x3ca0000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) x_ack!56)) ((_ to_fp 11 53) #x3fe5368f08461f9f)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fb0d08ec54894e1)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!56)
                           ((_ to_fp 11 53) x_ack!56)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x4001e1cbd1b4f7f3))
                 a!1)
         ((_ to_fp 11 53) #x4001e1cbd1b4f7f3))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fb0d08ec54894e1)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!56)
                           ((_ to_fp 11 53) x_ack!56)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) #x4001e1cbd1b4f7f3))
                 ((_ to_fp 11 53) #x4001e1cbd1b4f7f3))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!56)
                                   ((_ to_fp 11 53) x_ack!56))
                           ((_ to_fp 11 53) #x404799ee342fb2de))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!56)
                           ((_ to_fp 11 53) x_ack!56)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x404799ee342fb2de))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!56)
                                   ((_ to_fp 11 53) x_ack!56))
                           ((_ to_fp 11 53) #x404799ee342fb2de))
                   ((_ to_fp 11 53) #x404799ee342fb2de))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) x_ack!56)
                 ((_ to_fp 11 53) x_ack!56)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fb0d08ec54894e1)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!56)
                                   ((_ to_fp 11 53) x_ack!56)))
                   ((_ to_fp 11 53) #x4001e1cbd1b4f7f3))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            a!1
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!56)
                    ((_ to_fp 11 53) x_ack!56)))
    #x406420e744d785b7)))

(check-sat)
(exit)
