(declare-fun mu_ack!671 () (_ BitVec 64))
(declare-fun x_ack!672 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.gt ((_ to_fp 11 53) mu_ack!671) ((_ to_fp 11 53) #x403e000000000000)))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!672)
                    ((_ to_fp 11 53) x_ack!672))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4024000000000000)
                    ((_ to_fp 11 53) mu_ack!671)))))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!672)
                    ((_ to_fp 11 53) x_ack!672))
            ((_ to_fp 11 53) mu_ack!671))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) x_ack!672))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!672)
                       ((_ to_fp 11 53) x_ack!672))
               ((_ to_fp 11 53) x_ack!672))
       ((_ to_fp 11 53) x_ack!672)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) x_ack!672))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!672)
                       ((_ to_fp 11 53) x_ack!672))
               ((_ to_fp 11 53) x_ack!672))
       ((_ to_fp 11 53) x_ack!672)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) mu_ack!671)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!672)
                           ((_ to_fp 11 53) x_ack!672)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 ((_ to_fp 11 53) #x3ff0000000000000))
         a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) mu_ack!671)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!672)
                           ((_ to_fp 11 53) x_ack!672)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!672) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FDIV_UNDERFLOW mu_ack!671 #x4000000000000000))

(check-sat)
(exit)
