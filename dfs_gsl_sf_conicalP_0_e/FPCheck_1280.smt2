(declare-fun b_ack!4170 () (_ BitVec 64))
(declare-fun a_ack!4171 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!4170) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!4170) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4171) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!4170) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!4170) ((_ to_fp 11 53) #x3fb999999999999a)))
(assert (fp.lt ((_ to_fp 11 53) a_ack!4171) ((_ to_fp 11 53) #x4031000000000000)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.abs ((_ to_fp 11 53) b_ack!4170)))
                   (fp.abs ((_ to_fp 11 53) b_ack!4170)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.abs ((_ to_fp 11 53) b_ack!4170))))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) b_ack!4170)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4170)
                                   ((_ to_fp 11 53) b_ack!4170)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!4170)
                           ((_ to_fp 11 53) b_ack!4170)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!4170)
                                   ((_ to_fp 11 53) b_ack!4170))))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!4170)
                 ((_ to_fp 11 53) b_ack!4170)))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.abs ((_ to_fp 11 53) b_ack!4170))))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3cb0000000000000)
                                   a!1)))))
  (FPCHECK_FMUL_ACCURACY
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    a!2
                    ((_ to_fp 11 53) #x3cb0000000000000))
            ((_ to_fp 11 53) #x3ff0000000000000))
    #x3ffc5bf891b4ef6b))))

(check-sat)
(exit)
