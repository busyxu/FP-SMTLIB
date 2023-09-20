(declare-fun mu_ack!1137 () (_ BitVec 64))
(declare-fun x_ack!1138 () (_ BitVec 64))
(declare-fun CF_floor ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.gt ((_ to_fp 11 53) mu_ack!1137) ((_ to_fp 11 53) #x403e000000000000))))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!1138)
                    ((_ to_fp 11 53) x_ack!1138))
            ((_ to_fp 11 53) mu_ack!1137))))
(assert (let ((a!1 (and (fp.eq ((_ to_fp 11 53) mu_ack!1137)
                       ((_ to_fp 11 53) #x0000000000000000))
                (fp.eq (fp.mul roundNearestTiesToEven
                               ((_ to_fp 11 53) x_ack!1138)
                               ((_ to_fp 11 53) x_ack!1138))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!1)))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1138) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) mu_ack!1137)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1138)
                           ((_ to_fp 11 53) x_ack!1138)))))
(let ((a!2 (fp.eq (fp.div roundNearestTiesToEven
                          a!1
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  a!1))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!2))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) mu_ack!1137)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!1138)
                           ((_ to_fp 11 53) x_ack!1138)))))
(let ((a!2 (fp.eq (fp.div roundNearestTiesToEven
                          a!1
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x3ff0000000000000)
                                  a!1))
                  ((_ to_fp 11 53) #x3ff0000000000000))))
  (not a!2))))
(assert (not (fp.gt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) mu_ack!1137)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (not (fp.eq (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) mu_ack!1137)
                    ((_ to_fp 11 53) #x4000000000000000))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) mu_ack!1137)
               ((_ to_fp 11 53) #x4000000000000000))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.eq (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) mu_ack!1137)
                          ((_ to_fp 11 53) #x4000000000000000))
                  (CF_floor (fp.div roundNearestTiesToEven
                                    ((_ to_fp 11 53) mu_ack!1137)
                                    ((_ to_fp 11 53) #x4000000000000000))))))
  (not (fp.eq ((_ to_fp 11 53)
                roundNearestTiesToEven
                (ite a!1 #x00000001 #x00000000))
              ((_ to_fp 11 53) #x0000000000000000)))))

(check-sat)
(exit)
