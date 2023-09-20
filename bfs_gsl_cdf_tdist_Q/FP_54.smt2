(declare-fun mu_ack!1085 () (_ BitVec 64))
(declare-fun x_ack!1086 () (_ BitVec 64))
(assert (not (fp.gt ((_ to_fp 11 53) mu_ack!1085) ((_ to_fp 11 53) #x403e000000000000))))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!1086)
                    ((_ to_fp 11 53) x_ack!1086))
            ((_ to_fp 11 53) mu_ack!1085))))
(assert (let ((a!1 (and (fp.eq ((_ to_fp 11 53) mu_ack!1085)
                       ((_ to_fp 11 53) #x0000000000000000))
                (fp.eq (fp.mul roundNearestTiesToEven
                               ((_ to_fp 11 53) x_ack!1086)
                               ((_ to_fp 11 53) x_ack!1086))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!1)))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1086) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) mu_ack!1085)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1086)
                           ((_ to_fp 11 53) x_ack!1086)))))
(let ((a!2 (fp.eq (fp.div roundNearestTiesToEven
                          a!1
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  a!1))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!2))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) mu_ack!1085)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1086)
                           ((_ to_fp 11 53) x_ack!1086)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 a!1
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
