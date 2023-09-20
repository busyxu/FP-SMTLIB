(declare-fun x_ack!4511 () (_ BitVec 64))
(declare-fun nu1_ack!4509 () (_ BitVec 64))
(declare-fun nu2_ack!4510 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!4511) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) x_ack!4511) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!4511) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x_ack!4511) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) nu1_ack!4509) ((_ to_fp 11 53) #x40f86a0000000000))))
(assert (fp.gt ((_ to_fp 11 53) nu2_ack!4510) ((_ to_fp 11 53) #x40f86a0000000000)))
(assert (fp.lt ((_ to_fp 11 53) nu1_ack!4509) ((_ to_fp 11 53) #x4024000000000000)))
(assert (let ((a!1 (fp.lt ((_ to_fp 11 53) x_ack!4511)
                  (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) nu2_ack!4510)
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) nu1_ack!4509)
                                  ((_ to_fp 11 53) nu2_ack!4510))))))
  (not a!1)))
(assert (not (fp.eq ((_ to_fp 11 53) nu1_ack!4509) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) nu2_ack!4510) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!4509) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu2_ack!4510) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) nu1_ack!4509) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) nu2_ack!4510) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) nu1_ack!4509) ((_ to_fp 11 53) nu2_ack!4510))))
(assert (fp.lt ((_ to_fp 11 53) nu1_ack!4509) ((_ to_fp 11 53) nu2_ack!4510)))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) nu1_ack!4509))
        (fp.mul roundNearestTiesToEven
                (fp.abs ((_ to_fp 11 53) nu2_ack!4510))
                ((_ to_fp 11 53) #x0010000000000000))))
(assert (fp.lt (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) nu1_ack!4509)
               ((_ to_fp 11 53) nu2_ack!4510))
       ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (not (fp.leq ((_ to_fp 11 53) nu1_ack!4509)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) nu1_ack!4509) ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) nu1_ack!4509) ((_ to_fp 11 53) #x4000000000000000)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff5555555555555)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) nu1_ack!4509)
                                   ((_ to_fp 11 53) #x3fe0000000000000)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (FPCHECK_FSUB_UNDERFLOW
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x4000000000000000) a!1)
    #xbff0000000000000)))

(check-sat)
(exit)
