(declare-fun mu_ack!627 () (_ BitVec 64))
(declare-fun x_ack!628 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.gt ((_ to_fp 11 53) mu_ack!627) ((_ to_fp 11 53) #x403e000000000000)))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!628)
                    ((_ to_fp 11 53) x_ack!628))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4024000000000000)
                    ((_ to_fp 11 53) mu_ack!627)))))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!628)
                    ((_ to_fp 11 53) x_ack!628))
            ((_ to_fp 11 53) mu_ack!627))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) x_ack!628))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!628)
                       ((_ to_fp 11 53) x_ack!628))
               ((_ to_fp 11 53) x_ack!628))
       ((_ to_fp 11 53) x_ack!628)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) x_ack!628))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!628)
                       ((_ to_fp 11 53) x_ack!628))
               ((_ to_fp 11 53) x_ack!628))
       ((_ to_fp 11 53) x_ack!628)))
(assert (FPCHECK_FDIV_UNDERFLOW
  mu_ack!627
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!628)
          ((_ to_fp 11 53) x_ack!628))))

(check-sat)
(exit)
