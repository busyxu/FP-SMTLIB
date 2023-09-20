(declare-fun b_ack!113 () (_ BitVec 64))
(declare-fun a_ack!114 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!113) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!113) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!114) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!113)
                       ((_ to_fp 11 53) a_ack!114)))
       ((_ to_fp 11 53) #x3f48406003b2ae5a)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!113) ((_ to_fp 11 53) #x3f48406003b2ae5a))))
(assert (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!113)
                       ((_ to_fp 11 53) a_ack!114)))
       ((_ to_fp 11 53) #x3f48406003b2ae5a)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!113)
                                   ((_ to_fp 11 53) a_ack!114)))
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!113)
                                   ((_ to_fp 11 53) a_ack!114))))))
  (FPCHECK_FSUB_UNDERFLOW
    #x3ff0000000000000
    (fp.div roundNearestTiesToEven a!1 ((_ to_fp 11 53) #x4034000000000000)))))

(check-sat)
(exit)
