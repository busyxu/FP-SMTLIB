(declare-fun e_ack!1664 () (_ BitVec 32))
(declare-fun a_ack!1665 () (_ BitVec 64))
(declare-fun b_ack!1661 () (_ BitVec 64))
(declare-fun c_ack!1662 () (_ BitVec 64))
(declare-fun d_ack!1663 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (bvult (bvmul #x0000000000000008
              (concat #x00000000 (bvand e_ack!1664 #x00000007)))
       #x0000000000000011))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1665) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1661) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1662) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1665)
                    ((_ to_fp 11 53) b_ack!1661))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1665)
                    ((_ to_fp 11 53) c_ack!1662))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) b_ack!1661)
                    ((_ to_fp 11 53) c_ack!1662))
            ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (not (fp.lt ((_ to_fp 11 53) d_ack!1663) ((_ to_fp 11 53) #x2ab13c484138708e))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!1665) ((_ to_fp 11 53) b_ack!1661)))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1665) ((_ to_fp 11 53) c_ack!1662))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1662) ((_ to_fp 11 53) d_ack!1663))))
(assert (fp.lt ((_ to_fp 11 53) d_ack!1663) ((_ to_fp 11 53) #x551c4b19c41f715f)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1665)
                                   ((_ to_fp 11 53) b_ack!1661))
                           ((_ to_fp 11 53) c_ack!1662))
                   ((_ to_fp 11 53) d_ack!1663))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) d_ack!1663))
                           ((_ to_fp 11 53) #x3fc999999999999a))
                   ((_ to_fp 11 53) a_ack!1665)))
      (a!4 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) d_ack!1663))
                           ((_ to_fp 11 53) #x3fc999999999999a))
                   ((_ to_fp 11 53) b_ack!1661))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) d_ack!1663))
                           ((_ to_fp 11 53) #x3fc999999999999a))))
      (a!5 (fp.div roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) d_ack!1663))
                           ((_ to_fp 11 53) #x3fc999999999999a)))))
  (not (fp.gt (fp.abs a!3) (fp.abs a!5)))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1665)
                                   ((_ to_fp 11 53) b_ack!1661))
                           ((_ to_fp 11 53) c_ack!1662))
                   ((_ to_fp 11 53) d_ack!1663))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) d_ack!1663))
                           ((_ to_fp 11 53) #x3fc999999999999a))
                   ((_ to_fp 11 53) b_ack!1661)))
      (a!4 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) d_ack!1663))
                           ((_ to_fp 11 53) #x3fc999999999999a))
                   ((_ to_fp 11 53) c_ack!1662))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) d_ack!1663))
                           ((_ to_fp 11 53) #x3fc999999999999a))))
      (a!5 (fp.div roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) d_ack!1663))
                           ((_ to_fp 11 53) #x3fc999999999999a)))))
  (not (fp.gt (fp.abs a!3) (fp.abs a!5)))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1665)
                                   ((_ to_fp 11 53) b_ack!1661))
                           ((_ to_fp 11 53) c_ack!1662))
                   ((_ to_fp 11 53) d_ack!1663))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) d_ack!1663))
                           ((_ to_fp 11 53) #x3fc999999999999a))
                   ((_ to_fp 11 53) c_ack!1662)))
      (a!4 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) d_ack!1663))
                           ((_ to_fp 11 53) #x3fc999999999999a))
                   ((_ to_fp 11 53) d_ack!1663))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) d_ack!1663))
                           ((_ to_fp 11 53) #x3fc999999999999a))))
      (a!5 (fp.div roundNearestTiesToEven
                   a!4
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) d_ack!1663))
                           ((_ to_fp 11 53) #x3fc999999999999a)))))
  (not (fp.gt (fp.abs a!3) (fp.abs a!5)))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1665)
                                   ((_ to_fp 11 53) b_ack!1661))
                           ((_ to_fp 11 53) c_ack!1662))
                   ((_ to_fp 11 53) d_ack!1663)))
      (a!4 ((_ to_fp 11 53)
             (ite (= #x00000000 (bvand e_ack!1664 #x00000007))
                  #x3f50624dd2f1a9fc
                  #x3f9eb851eb851eb8))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) d_ack!1663))
                           ((_ to_fp 11 53) #x3fc999999999999a))
                   ((_ to_fp 11 53) d_ack!1663))))
(let ((a!3 (fp.div roundNearestTiesToEven
                   a!2
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) d_ack!1663))
                           ((_ to_fp 11 53) #x3fc999999999999a)))))
  (not (fp.lt (fp.abs a!3) a!4))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) d_ack!1663)
                           ((_ to_fp 11 53) #x7ff0000000000001))
                   ((_ to_fp 11 53) #x7ff0000000000001))))
  (FPCHECK_FMUL_ACCURACY a!1 a!1)))

(check-sat)
(exit)
