(declare-fun a_ack!1053 () (_ BitVec 64))
(declare-fun b_ack!1052 () (_ BitVec 32))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!1053) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (= #x00000000 b_ack!1052)))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1053) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000001 b_ack!1052)))
(assert (not (bvule b_ack!1052 #x0000000a)))
(assert (fp.gt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven b_ack!1052)
       (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3fe0000000000000)
               ((_ to_fp 11 53) a_ack!1053))))
(assert (not (bvule b_ack!1052 #x00000014)))
(assert (not (fp.gt ((_ to_fp_unsigned 11 53) roundNearestTiesToEven b_ack!1052)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4000000000000000)
                    ((_ to_fp 11 53) a_ack!1053)))))
(assert (not (bvult b_ack!1052 #x00000001)))
(assert (not (bvult (concat #x00000000 b_ack!1052) #x0000000000000065)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           ((_ to_fp_unsigned 11 53)
                             roundNearestTiesToEven
                             b_ack!1052))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff2d97c7f3321d2)
                         a!1)
                 ((_ to_fp 11 53) #x3ff2d97c7f3321d2))
         a!1)))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     b_ack!1052))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4010000000000000)
                           ((_ to_fp_unsigned 11 53)
                             roundNearestTiesToEven
                             b_ack!1052))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff2d97c7f3321d2)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff2d97c7f3321d2))))

(check-sat)
(exit)
