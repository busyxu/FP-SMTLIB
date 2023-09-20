(declare-fun mu_ack!1197 () (_ BitVec 64))
(declare-fun x_ack!1198 () (_ BitVec 64))
(assert (fp.gt ((_ to_fp 11 53) mu_ack!1197) ((_ to_fp 11 53) #x403e000000000000)))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!1198)
                    ((_ to_fp 11 53) x_ack!1198))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4024000000000000)
                    ((_ to_fp 11 53) mu_ack!1197)))))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!1198)
                    ((_ to_fp 11 53) x_ack!1198))
            ((_ to_fp 11 53) mu_ack!1197))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) x_ack!1198))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!1198)
                       ((_ to_fp 11 53) x_ack!1198))
               ((_ to_fp 11 53) x_ack!1198))
       ((_ to_fp 11 53) x_ack!1198)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) x_ack!1198))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!1198)
                       ((_ to_fp 11 53) x_ack!1198))
               ((_ to_fp 11 53) x_ack!1198))
       ((_ to_fp 11 53) x_ack!1198)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) mu_ack!1197)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1198)
                           ((_ to_fp 11 53) x_ack!1198)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 ((_ to_fp 11 53) #x3ff0000000000000))
         a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) mu_ack!1197)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1198)
                           ((_ to_fp 11 53) x_ack!1198)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1198) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) mu_ack!1197)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1198)
                           ((_ to_fp 11 53) x_ack!1198)))))
(let ((a!2 (fp.eq (fp.div roundNearestTiesToEven
                          a!1
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  a!1))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!2))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) mu_ack!1197)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1198)
                           ((_ to_fp 11 53) x_ack!1198)))))
(let ((a!2 (fp.eq (fp.div roundNearestTiesToEven
                          a!1
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  a!1))
                  ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!2))))
(assert (not (fp.gt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) mu_ack!1197)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (not (fp.eq (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) mu_ack!1197)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) mu_ack!1197)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) mu_ack!1197)
               ((_ to_fp 11 53) #x4000000000000000))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) mu_ack!1197)
               ((_ to_fp 11 53) #x4000000000000000))
       ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) mu_ack!1197)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fe0000000000000)
               (fp.div roundNearestTiesToEven
                       ((_ to_fp 11 53) mu_ack!1197)
                       ((_ to_fp 11 53) #x4000000000000000)))
       ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (not (fp.leq (fp.div roundNearestTiesToEven
                     ((_ to_fp 11 53) mu_ack!1197)
                     ((_ to_fp 11 53) #x4000000000000000))
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) mu_ack!1197)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) mu_ack!1197)
               ((_ to_fp 11 53) #x4000000000000000))
       ((_ to_fp 11 53) #x4000000000000000)))

(check-sat)
(exit)
