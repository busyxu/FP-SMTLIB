(declare-fun c_ack!124 () (_ BitVec 64))
(declare-fun a_ack!125 () (_ BitVec 32))
(declare-fun b_ack!123 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!124) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!124) ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (= #x00000000 a_ack!125))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!124) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!124) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!123) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!123)
                       ((_ to_fp 11 53) c_ack!124)))
       ((_ to_fp 11 53) #x3f20000000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!123)
                                  ((_ to_fp 11 53) c_ack!124)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!123)
                                   ((_ to_fp 11 53) c_ack!124))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!123)
                                   ((_ to_fp 11 53) c_ack!124)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!123)
                           ((_ to_fp 11 53) c_ack!124)))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!123)
                 ((_ to_fp 11 53) c_ack!124)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!123)
                                  ((_ to_fp 11 53) c_ack!124)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!123)
                                   ((_ to_fp 11 53) c_ack!124))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!123)
                                   ((_ to_fp 11 53) c_ack!124)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!123)
                           ((_ to_fp 11 53) c_ack!124)))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!123)
                 ((_ to_fp 11 53) c_ack!124)))))

(check-sat)
(exit)
