(declare-fun a_ack!2720 () (_ BitVec 32))
(declare-fun b_ack!2718 () (_ BitVec 32))
(declare-fun c_ack!2719 () (_ BitVec 64))
(assert (not (bvslt a_ack!2720 #x00000000)))
(assert (not (bvslt b_ack!2718 a_ack!2720)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!2719) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 b_ack!2718)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!2719) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!2719) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!2719) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!2719))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!2719)
                       ((_ to_fp 11 53) c_ack!2719))
               ((_ to_fp 11 53) c_ack!2719))
       ((_ to_fp 11 53) c_ack!2719)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!2719))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!2719)
                       ((_ to_fp 11 53) c_ack!2719))
               ((_ to_fp 11 53) c_ack!2719))
       ((_ to_fp 11 53) c_ack!2719)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) c_ack!2719)
                                  ((_ to_fp 11 53) c_ack!2719)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!2719)
                                   ((_ to_fp 11 53) c_ack!2719))
                           ((_ to_fp 11 53) #x3d9d141fcb837472))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!2719)
                           ((_ to_fp 11 53) c_ack!2719)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3d9d141fcb837472))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!2719)
                                   ((_ to_fp 11 53) c_ack!2719))
                           ((_ to_fp 11 53) #x3d9d141fcb837472))
                   ((_ to_fp 11 53) #x3d9d141fcb837472))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) c_ack!2719)
                 ((_ to_fp 11 53) c_ack!2719)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!2719)
                           ((_ to_fp 11 53) c_ack!2719))
                   ((_ to_fp 11 53) #x3d9d141fcb837472))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3e14c2029d5d2fb5)
                         a!1)
                 ((_ to_fp 11 53) #x3e14c2029d5d2fb5))
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!2719)
                           ((_ to_fp 11 53) c_ack!2719))
                   ((_ to_fp 11 53) #x3d9d141fcb837472))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3e14c2029d5d2fb5)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3e14c2029d5d2fb5))))

(check-sat)
(exit)
