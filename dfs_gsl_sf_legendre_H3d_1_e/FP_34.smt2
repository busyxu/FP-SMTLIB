(declare-fun b_ack!435 () (_ BitVec 64))
(declare-fun a_ack!436 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!435) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!435) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!436) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!435)
                       ((_ to_fp 11 53) a_ack!436)))
       ((_ to_fp 11 53) #x3f48406003b2ae5a)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!435) ((_ to_fp 11 53) #x3f48406003b2ae5a)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!435)
                                   ((_ to_fp 11 53) a_ack!436)))
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!435)
                                   ((_ to_fp 11 53) a_ack!436))))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #x4008000000000000)
                         a!1)
                 ((_ to_fp 11 53) #x4008000000000000))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!435)
                                   ((_ to_fp 11 53) a_ack!436)))
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!435)
                                   ((_ to_fp 11 53) a_ack!436))))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!435)
                                   ((_ to_fp 11 53) a_ack!436)))
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!435)
                                   ((_ to_fp 11 53) a_ack!436))))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #x4008000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x4008000000000000))))

(check-sat)
(exit)
