(declare-fun a_ack!2392 () (_ BitVec 32))
(declare-fun b_ack!2390 () (_ BitVec 32))
(declare-fun c_ack!2391 () (_ BitVec 64))
(assert (not (bvslt a_ack!2392 #x00000000)))
(assert (not (bvslt b_ack!2390 a_ack!2392)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!2391) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!2392 #x00000000)))
(assert (not (= #x00000000 a_ack!2392)))
(assert (not (= #x00000001 a_ack!2392)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!2391) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!2391) ((_ to_fp 11 53) #x4014000000000000))))
(assert (fp.gt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ed965fea53d6e41)
               ((_ to_fp 11 53) c_ack!2391))
       (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53)
                 roundNearestTiesToEven
                 (bvmul a_ack!2392 a_ack!2392))
               ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!2392))
                           ((_ to_fp 11 53) c_ack!2391)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2392))
                   ((_ to_fp 11 53) c_ack!2391))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!1)
                 a!1)
         a!1)))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!2392))
                           ((_ to_fp 11 53) c_ack!2391)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2392))
                   ((_ to_fp 11 53) c_ack!2391))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!1)
                 a!1)
         a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2392))
                   ((_ to_fp 11 53) c_ack!2391)))
      (a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!2391)
                           ((_ to_fp 11 53) c_ack!2391)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         (fp.mul roundNearestTiesToEven a!1 a!1)
                         a!2)
                 a!2)
         (fp.mul roundNearestTiesToEven a!1 a!1))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2392))
                   ((_ to_fp 11 53) c_ack!2391)))
      (a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!2391)
                           ((_ to_fp 11 53) c_ack!2391)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!1)
                 (fp.sub roundNearestTiesToEven
                         (fp.mul roundNearestTiesToEven a!1 a!1)
                         a!2))
         a!2)))

(check-sat)
(exit)
