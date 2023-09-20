(declare-fun a_ack!2377 () (_ BitVec 32))
(declare-fun b_ack!2375 () (_ BitVec 32))
(declare-fun c_ack!2376 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt a_ack!2377 #x00000000)))
(assert (not (bvslt b_ack!2375 a_ack!2377)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!2376) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!2377 #x00000000)))
(assert (not (= #x00000000 a_ack!2377)))
(assert (not (= #x00000001 a_ack!2377)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!2376) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!2376) ((_ to_fp 11 53) #x4014000000000000))))
(assert (fp.gt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ed965fea53d6e41)
               ((_ to_fp 11 53) c_ack!2376))
       (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53)
                 roundNearestTiesToEven
                 (bvmul a_ack!2377 a_ack!2377))
               ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!2377))
                           ((_ to_fp 11 53) c_ack!2376)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2377))
                   ((_ to_fp 11 53) c_ack!2376))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!1)
                 a!1)
         a!1)))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!2377))
                           ((_ to_fp 11 53) c_ack!2376)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2377))
                   ((_ to_fp 11 53) c_ack!2376))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!1)
                 a!1)
         a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2377))
                   ((_ to_fp 11 53) c_ack!2376)))
      (a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!2376)
                           ((_ to_fp 11 53) c_ack!2376)))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         (fp.mul roundNearestTiesToEven a!1 a!1)
                         a!2)
                 a!2)
         (fp.mul roundNearestTiesToEven a!1 a!1))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2377))
                   ((_ to_fp 11 53) c_ack!2376)))
      (a!2 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!2376)
                           ((_ to_fp 11 53) c_ack!2376)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!1)
                 (fp.sub roundNearestTiesToEven
                         (fp.mul roundNearestTiesToEven a!1 a!1)
                         a!2))
         a!2)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2377))
                   ((_ to_fp 11 53) c_ack!2376))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven a!1 a!1)
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!2376)
                                   ((_ to_fp 11 53) c_ack!2376))))))
  (FPCHECK_FDIV_OVERFLOW a!2 #x4020000000000000))))

(check-sat)
(exit)
