(declare-fun c_ack!112 () (_ BitVec 64))
(declare-fun a_ack!113 () (_ BitVec 32))
(declare-fun b_ack!111 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!112) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!112) ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (= #x00000000 a_ack!113))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!112) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!112) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!111) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!111)
                       ((_ to_fp 11 53) c_ack!112)))
       ((_ to_fp 11 53) #x3f20000000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!111)
                                  ((_ to_fp 11 53) c_ack!112)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!111)
                                   ((_ to_fp 11 53) c_ack!112))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!111)
                                   ((_ to_fp 11 53) c_ack!112)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!111)
                           ((_ to_fp 11 53) c_ack!112)))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!111)
                 ((_ to_fp 11 53) c_ack!112)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!111)
                                  ((_ to_fp 11 53) c_ack!112)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!111)
                                   ((_ to_fp 11 53) c_ack!112))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!111)
                                   ((_ to_fp 11 53) c_ack!112)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!111)
                           ((_ to_fp 11 53) c_ack!112)))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!111)
                 ((_ to_fp 11 53) c_ack!112)))))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!111)
                  ((_ to_fp 11 53) c_ack!112))
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!111)
                  ((_ to_fp 11 53) c_ack!112)))
  #x4018000000000000))

(check-sat)
(exit)
