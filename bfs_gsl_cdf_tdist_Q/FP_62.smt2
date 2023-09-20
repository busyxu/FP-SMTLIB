(declare-fun mu_ack!1165 () (_ BitVec 64))
(declare-fun x_ack!1166 () (_ BitVec 64))
(assert (fp.gt ((_ to_fp 11 53) mu_ack!1165) ((_ to_fp 11 53) #x403e000000000000)))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!1166)
                    ((_ to_fp 11 53) x_ack!1166))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4024000000000000)
                    ((_ to_fp 11 53) mu_ack!1165)))))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!1166)
                    ((_ to_fp 11 53) x_ack!1166))
            ((_ to_fp 11 53) mu_ack!1165))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) x_ack!1166))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!1166)
                       ((_ to_fp 11 53) x_ack!1166))
               ((_ to_fp 11 53) x_ack!1166))
       ((_ to_fp 11 53) x_ack!1166)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) x_ack!1166))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!1166)
                       ((_ to_fp 11 53) x_ack!1166))
               ((_ to_fp 11 53) x_ack!1166))
       ((_ to_fp 11 53) x_ack!1166)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) mu_ack!1165)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1166)
                           ((_ to_fp 11 53) x_ack!1166)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 ((_ to_fp 11 53) #x3ff0000000000000))
         a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) mu_ack!1165)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1166)
                           ((_ to_fp 11 53) x_ack!1166)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1166) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) mu_ack!1165)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1166)
                           ((_ to_fp 11 53) x_ack!1166)))))
(let ((a!2 (fp.eq (fp.div roundNearestTiesToEven
                          a!1
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  a!1))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!2))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) mu_ack!1165)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1166)
                           ((_ to_fp 11 53) x_ack!1166)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 a!1
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
