(declare-fun mu_ack!671 () (_ BitVec 64))
(declare-fun x_ack!672 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
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
(assert (FPCHECK_FDIV_OVERFLOW
  mu_ack!671
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!672)
          ((_ to_fp 11 53) x_ack!672))))

(check-sat)
(exit)
