(declare-fun a_ack!2001 () (_ BitVec 32))
(declare-fun b_ack!2000 () (_ BitVec 64))
(assert (not (bvslt a_ack!2001 #x00000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2000) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2000) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!2001)))
(assert (not (= #x00000001 a_ack!2001)))
(assert (not (= #x00000002 a_ack!2001)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!2001)
                                   ((_ to_fp 11 53) #x3fe0000000000000)))
                   ((_ to_fp 11 53) #x4005bf0a8b145769))))
  (not (fp.lt (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) b_ack!2000)
                      ((_ to_fp 11 53) b_ack!2000))
              a!1))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53)
                     roundNearestTiesToEven
                     (bvadd (bvmul a_ack!2001 a_ack!2001) a_ack!2001))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (not (fp.gt (fp.mul roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3f20000000000000)
                      ((_ to_fp 11 53) b_ack!2000))
              a!1))))
(assert (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2001)
       ((_ to_fp 11 53) #x407965fea53d6e3a)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2000) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) roundNearestTiesToEven a_ack!2001)
                     ((_ to_fp 11 53) #x3fe0000000000000))
             ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
