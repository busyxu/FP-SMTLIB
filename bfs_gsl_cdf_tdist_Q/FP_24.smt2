(declare-fun mu_ack!707 () (_ BitVec 64))
(declare-fun x_ack!708 () (_ BitVec 64))
(assert (not (fp.gt ((_ to_fp 11 53) mu_ack!707) ((_ to_fp 11 53) #x403e000000000000))))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) x_ack!708)
               ((_ to_fp 11 53) x_ack!708))
       ((_ to_fp 11 53) mu_ack!707)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!708)
                           ((_ to_fp 11 53) x_ack!708))
                   ((_ to_fp 11 53) mu_ack!707))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 ((_ to_fp 11 53) #x3ff0000000000000))
         a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!708)
                           ((_ to_fp 11 53) x_ack!708))
                   ((_ to_fp 11 53) mu_ack!707))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!708) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
