(declare-fun c_ack!217 () (_ BitVec 64))
(declare-fun a_ack!218 () (_ BitVec 32))
(declare-fun b_ack!216 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!217) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!217) ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (= #x00000000 a_ack!218))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!217) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!217) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!216) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!216)
                       ((_ to_fp 11 53) c_ack!217)))
       ((_ to_fp 11 53) #x3f20000000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!216)
                                  ((_ to_fp 11 53) c_ack!217)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!216)
                                   ((_ to_fp 11 53) c_ack!217))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!216)
                                   ((_ to_fp 11 53) c_ack!217)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!216)
                           ((_ to_fp 11 53) c_ack!217)))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!216)
                 ((_ to_fp 11 53) c_ack!217)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!216)
                                  ((_ to_fp 11 53) c_ack!217)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!216)
                                   ((_ to_fp 11 53) c_ack!217))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!216)
                                   ((_ to_fp 11 53) c_ack!217)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!216)
                           ((_ to_fp 11 53) c_ack!217)))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!216)
                 ((_ to_fp 11 53) c_ack!217)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!216)
                                   ((_ to_fp 11 53) c_ack!217))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!216)
                                   ((_ to_fp 11 53) c_ack!217)))
                   ((_ to_fp 11 53) #x4018000000000000))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!216)
                                   ((_ to_fp 11 53) c_ack!217))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!216)
                                   ((_ to_fp 11 53) c_ack!217)))
                   ((_ to_fp 11 53) #x4018000000000000))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         a!1)))

(check-sat)
(exit)
