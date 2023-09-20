(declare-fun mu_ack!110 () (_ BitVec 64))
(declare-fun x_ack!111 () (_ BitVec 64))
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (and (fp.eq ((_ to_fp 11 53) x_ack!111)
                 ((_ to_fp 11 53) #x0000000000000000))
          (fp.eq ((_ to_fp 11 53) mu_ack!110)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (fp.geq (fp.div roundNearestTiesToEven
                ((_ to_fp 11 53) x_ack!111)
                ((_ to_fp 11 53) mu_ack!110))
        ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (CF_exp (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!111)
                                   ((_ to_fp 11 53) mu_ack!110))))))
(let ((a!2 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  a!1))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!2))))
(assert (let ((a!1 (CF_exp (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!111)
                                   ((_ to_fp 11 53) mu_ack!110))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           a!1))))
  (not (fp.eq a!2 a!1)))))
(assert (let ((a!1 (CF_exp (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!111)
                                   ((_ to_fp 11 53) mu_ack!110))))))
(let ((a!2 (fp.abs (fp.div roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)))))
  (not (fp.eq a!2 ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (CF_exp (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x8000000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!111)
                                   ((_ to_fp 11 53) mu_ack!110))))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   a!1
                   (fp.div roundNearestTiesToEven
                           a!1
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)))))
  (fp.eq a!2
         (fp.add roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 a!1)))))

(check-sat)
(exit)
