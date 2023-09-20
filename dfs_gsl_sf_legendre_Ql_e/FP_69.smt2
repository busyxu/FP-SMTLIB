(declare-fun b_ack!1054 () (_ BitVec 64))
(declare-fun a_ack!1055 () (_ BitVec 32))
(declare-fun CF_acos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!1054) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1054) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt a_ack!1055 #x00000000)))
(assert (not (= #x00000000 a_ack!1055)))
(assert (not (= #x00000001 a_ack!1055)))
(assert (bvslt #x000186a0 a_ack!1055))
(assert (fp.lt ((_ to_fp 11 53) b_ack!1054) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.lt (CF_acos b_ack!1054) ((_ to_fp 11 53) #x3f20000000000000))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53)
                                    roundNearestTiesToEven
                                    a_ack!1055)
                                  ((_ to_fp 11 53) #x3fe0000000000000)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!1055)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           (CF_acos b_ack!1054))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1055)
                           ((_ to_fp 11 53) #x3fe0000000000000)))))
  (fp.eq a!1 (CF_acos b_ack!1054))))
(assert (not (fp.eq (fp.abs (CF_acos b_ack!1054)) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!1055)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           (CF_acos b_ack!1054))
                   (CF_acos b_ack!1054))))
  (fp.eq a!1
         (fp.add roundNearestTiesToEven
                 ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1055)
                 ((_ to_fp 11 53) #x3fe0000000000000)))))
(assert (let ((a!1 (fp.leq (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!1055)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           (CF_acos b_ack!1054))
                   ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53)
                                    roundNearestTiesToEven
                                    a_ack!1055)
                                  ((_ to_fp 11 53) #x3fe0000000000000))
                          (CF_acos b_ack!1054))
                  ((_ to_fp 11 53) #x4010000000000000))))
  (not a!1)))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1055)
                       ((_ to_fp 11 53) #x3fe0000000000000))
               (CF_acos b_ack!1054))
       ((_ to_fp 11 53) #x4330000000000000)))

(check-sat)
(exit)
