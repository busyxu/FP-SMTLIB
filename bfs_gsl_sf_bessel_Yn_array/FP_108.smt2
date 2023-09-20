(declare-fun a_ack!2521 () (_ BitVec 32))
(declare-fun b_ack!2519 () (_ BitVec 32))
(declare-fun c_ack!2520 () (_ BitVec 64))
(assert (not (bvslt a_ack!2521 #x00000000)))
(assert (not (bvslt b_ack!2519 a_ack!2521)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!2520) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!2521 #x00000000)))
(assert (not (= #x00000000 a_ack!2521)))
(assert (not (= #x00000001 a_ack!2521)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!2520) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!2520) ((_ to_fp 11 53) #x4014000000000000))))
(assert (let ((a!1 (fp.gt (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ed965fea53d6e41)
                          ((_ to_fp 11 53) c_ack!2520))
                  (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53)
                            roundNearestTiesToEven
                            (bvmul a_ack!2521 a_ack!2521))
                          ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not a!1)))
(assert (bvslt #x00000032 a_ack!2521))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!2520) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2521)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!2520)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!2521))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f947ae147ae147b)))))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) c_ack!2520)
                    ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2521))
            ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
