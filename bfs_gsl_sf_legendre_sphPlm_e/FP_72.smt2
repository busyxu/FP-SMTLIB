(declare-fun b_ack!1713 () (_ BitVec 32))
(declare-fun a_ack!1715 () (_ BitVec 32))
(declare-fun c_ack!1714 () (_ BitVec 64))
(declare-fun CF_acos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (bvslt b_ack!1713 #x00000000)))
(assert (not (bvslt a_ack!1715 b_ack!1713)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1714) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1714) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (= #x00000000 b_ack!1713))
(assert (not (bvslt a_ack!1715 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1714) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!1714) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!1715)))
(assert (not (= #x00000001 a_ack!1715)))
(assert (not (= #x00000002 a_ack!1715)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1714) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1714) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!1715 #x000186a0)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!1715)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           (CF_acos c_ack!1714)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3e60000000000000)))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!1715)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           (CF_acos c_ack!1714)))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x4010000000000000)))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!1715)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           (CF_acos c_ack!1714)))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!1715)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           (CF_acos c_ack!1714)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!1)
                 a!1)
         a!1)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!1715)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           (CF_acos c_ack!1714)))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!1715)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           (CF_acos c_ack!1714)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!1)
                 a!1)
         a!1)))

(check-sat)
(exit)
