(declare-fun b_ack!2286 () (_ BitVec 32))
(declare-fun a_ack!2288 () (_ BitVec 32))
(declare-fun c_ack!2287 () (_ BitVec 64))
(declare-fun CF_acos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (bvslt b_ack!2286 #x00000000)))
(assert (not (bvslt a_ack!2288 b_ack!2286)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!2287) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!2287) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (= #x00000000 b_ack!2286))
(assert (not (bvslt a_ack!2288 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!2287) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!2287) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (= #x00000000 a_ack!2288)))
(assert (not (= #x00000001 a_ack!2288)))
(assert (not (= #x00000002 a_ack!2288)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2287) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2287) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!2288 #x000186a0)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!2288)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           (CF_acos c_ack!2287)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3e60000000000000)))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!2288)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           (CF_acos c_ack!2287)))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x4010000000000000)))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!2288)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           (CF_acos c_ack!2287)))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!2288)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           (CF_acos c_ack!2287)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!1)
                 a!1)
         a!1)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!2288)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           (CF_acos c_ack!2287)))))
  (not (fp.eq (fp.abs a!1) ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!2288)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           (CF_acos c_ack!2287)))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!1)
                 a!1)
         a!1)))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!2288)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           (CF_acos c_ack!2287)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4040000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.eq a!2
         (fp.div roundNearestTiesToEven
                 ((_ to_fp 11 53) #x4040000000000000)
                 (fp.mul roundNearestTiesToEven a!1 a!1))))))
(assert (let ((a!1 (fp.abs (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!2288)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           (CF_acos c_ack!2287)))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4040000000000000)
                           (fp.mul roundNearestTiesToEven a!1 a!1))
                   (fp.sub roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4040000000000000)
                                   (fp.mul roundNearestTiesToEven a!1 a!1))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.eq a!2 ((_ to_fp 11 53) #x3ff0000000000000)))))

(check-sat)
(exit)
