(declare-fun a_ack!1843 () (_ BitVec 32))
(declare-fun b_ack!1841 () (_ BitVec 32))
(declare-fun c_ack!1842 () (_ BitVec 64))
(assert (not (bvslt a_ack!1843 #x00000000)))
(assert (not (bvslt b_ack!1841 a_ack!1843)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1842) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!1843 #x00000000)))
(assert (not (= #x00000000 a_ack!1843)))
(assert (not (= #x00000001 a_ack!1843)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1842) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1842) ((_ to_fp 11 53) #x4014000000000000))))
(assert (fp.gt (fp.mul roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ed965fea53d6e41)
               ((_ to_fp 11 53) c_ack!1842))
       (fp.add roundNearestTiesToEven
               ((_ to_fp 11 53)
                 roundNearestTiesToEven
                 (bvmul a_ack!1843 a_ack!1843))
               ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!1843))
                           ((_ to_fp 11 53) c_ack!1842)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1843))
                   ((_ to_fp 11 53) c_ack!1842))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!1)
                 a!1)
         a!1)))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!1843))
                           ((_ to_fp 11 53) c_ack!1842)))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4000000000000000)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1843))
                   ((_ to_fp 11 53) c_ack!1842))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!1)
                 a!1)
         a!1)))

(check-sat)
(exit)
