(declare-fun a_ack!240 () (_ BitVec 32))
(declare-fun b_ack!239 () (_ BitVec 64))
(declare-fun CF_acos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (bvslt a_ack!240 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!239) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!239) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!240)))
(assert (not (= #x00000001 a_ack!240)))
(assert (not (= #x00000002 a_ack!240)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!239) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!239) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!240 #x000186a0)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!240)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           (CF_acos b_ack!239)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3e60000000000000)))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!240)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           (CF_acos b_ack!239)))))
  (fp.leq a!1 ((_ to_fp 11 53) #x4010000000000000))))

(check-sat)
(exit)
