(declare-fun x_ack!2931 () (_ BitVec 64))
(declare-fun a_ack!2930 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!2931) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!2931) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2931) ((_ to_fp 11 53) #x3fa999999999999a))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!2931) ((_ to_fp 11 53) #x3fee666666666666))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!2931) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!2931) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.leq (fp.abs (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!2931)
                                   ((_ to_fp 11 53) #x3fe0000000000000)))
                   ((_ to_fp 11 53) #x3fdb333333333333))))
  (not a!1)))
(assert (fp.lt ((_ to_fp 11 53) x_ack!2931) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (fp.lt ((_ to_fp 11 53) x_ack!2931) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) #x0000000000000000)
                     ((_ to_fp 11 53) a_ack!2930))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.div roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x0000000000000000)
                                  ((_ to_fp 11 53) a_ack!2930))
                          ((_ to_fp 11 53) #x3ff0000000000000))
                  ((_ to_fp 11 53) a_ack!2930))))
  (not a!1)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2930) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.div roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x0000000000000000)
                                  ((_ to_fp 11 53) a_ack!2930))
                          ((_ to_fp 11 53) #x3ff0000000000000))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.eq (fp.div roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x0000000000000000)
                                  ((_ to_fp 11 53) a_ack!2930))
                          ((_ to_fp 11 53) #x3ff0000000000000))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2930) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.leq (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!2930))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           ((_ to_fp 11 53) a_ack!2930)))))
  (not a!1)))
(assert (fp.geq ((_ to_fp 11 53) a_ack!2930) ((_ to_fp 11 53) #x412e848000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!2930))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) a_ack!2930))))
  (fp.lt (fp.mul roundNearestTiesToEven a!1 a!1) ((_ to_fp 11 53) a_ack!2930))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!2930))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) a_ack!2930))))
  (not (fp.leq (fp.div roundNearestTiesToEven a!1 ((_ to_fp 11 53) a_ack!2930))
               ((_ to_fp 11 53) #xbff0000000000000)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!2930))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) a_ack!2930))))
  (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                         a!1
                         ((_ to_fp 11 53) a_ack!2930)))
         ((_ to_fp 11 53) #x3f48406003b2ae5a))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!2930))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) a_ack!2930))))
(let ((a!2 (ite (fp.geq (fp.div roundNearestTiesToEven
                                a!1
                                ((_ to_fp 11 53) a_ack!2930))
                        ((_ to_fp 11 53) #x0000000000000000))
                #x00000001
                #xffffffff)))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!2)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x408f400000000000))
                   ((_ to_fp 11 53) #x3ff6a09e667f3bcd))))
  (fp.leq (fp.abs a!3) ((_ to_fp 11 53) #x3ff0000000000000))))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   ((_ to_fp 11 53) a_ack!2930))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) a_ack!2930))))
(let ((a!2 (ite (fp.geq (fp.div roundNearestTiesToEven
                                a!1
                                ((_ to_fp 11 53) a_ack!2930))
                        ((_ to_fp 11 53) #x0000000000000000))
                #x00000001
                #xffffffff)))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) roundNearestTiesToEven a!2)
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x408f400000000000))
                   ((_ to_fp 11 53) #x3ff6a09e667f3bcd))))
  (FPCHECK_FMUL_ACCURACY #x4000000000000000 (fp.abs a!3))))))

(check-sat)
(exit)
