(declare-fun a_ack!1018 () (_ BitVec 32))
(declare-fun b_ack!1017 () (_ BitVec 64))
(assert (not (bvslt a_ack!1018 #x00000000)))
(assert (not (= #x00000000 a_ack!1018)))
(assert (not (= #x00000001 a_ack!1018)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!1017) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!1017))
            ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (bvslt #x00000001 a_ack!1018))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!1017))
            ((_ to_fp 11 53) #x7fefffffffffffff))))
(assert (bvslt #x00000002 a_ack!1018))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1017)
                                   ((_ to_fp 11 53) b_ack!1017))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x7fefffffffffffff)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!1017))
            ((_ to_fp 11 53) #x7fdccccccccccccc))))
(assert (bvslt #x00000003 a_ack!1018))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!1017)
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1017)
                                   ((_ to_fp 11 53) b_ack!1017))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.abs (fp.sub roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!1017))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x7fefffffffffffff))))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1017)
                                   ((_ to_fp 11 53) b_ack!1017))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x7fd3333333333333)))))
(assert (bvslt #x00000004 a_ack!1018))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1017)
                           ((_ to_fp 11 53) b_ack!1017))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!1017)
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1017)
                                   a!1)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!1017))))))
(let ((a!3 (fp.abs (fp.sub roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   a!1)))))
  (not (fp.gt a!3 ((_ to_fp 11 53) #x7fefffffffffffff)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) b_ack!1017)
                   (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1017)
                                   ((_ to_fp 11 53) b_ack!1017))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.abs (fp.sub roundNearestTiesToEven
                           a!1
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!1017))))))
  (not (fp.gt a!2 ((_ to_fp 11 53) #x7fcccccccccccccc))))))

(check-sat)
(exit)
