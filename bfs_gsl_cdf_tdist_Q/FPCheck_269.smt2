(declare-fun mu_ack!681 () (_ BitVec 64))
(declare-fun x_ack!682 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.gt ((_ to_fp 11 53) mu_ack!681) ((_ to_fp 11 53) #x403e000000000000)))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!682)
                    ((_ to_fp 11 53) x_ack!682))
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4024000000000000)
                    ((_ to_fp 11 53) mu_ack!681)))))
(assert (not (fp.lt (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) x_ack!682)
                    ((_ to_fp 11 53) x_ack!682))
            ((_ to_fp 11 53) mu_ack!681))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) x_ack!682))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!682)
                       ((_ to_fp 11 53) x_ack!682))
               ((_ to_fp 11 53) x_ack!682))
       ((_ to_fp 11 53) x_ack!682)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) x_ack!682))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) x_ack!682)
                       ((_ to_fp 11 53) x_ack!682))
               ((_ to_fp 11 53) x_ack!682))
       ((_ to_fp 11 53) x_ack!682)))
(assert (FPCHECK_FDIV_INVALID
  mu_ack!681
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!682)
          ((_ to_fp 11 53) x_ack!682))))

(check-sat)
(exit)
