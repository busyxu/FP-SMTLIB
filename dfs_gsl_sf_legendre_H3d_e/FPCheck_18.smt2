(declare-fun c_ack!109 () (_ BitVec 64))
(declare-fun a_ack!110 () (_ BitVec 32))
(declare-fun b_ack!108 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!109) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!109) ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (= #x00000000 a_ack!110))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!109) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!109) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!108) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!108)
                       ((_ to_fp 11 53) c_ack!109)))
       ((_ to_fp 11 53) #x3f20000000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!108)
                                  ((_ to_fp 11 53) c_ack!109)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!108)
                                   ((_ to_fp 11 53) c_ack!109))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!108)
                                   ((_ to_fp 11 53) c_ack!109)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!108)
                           ((_ to_fp 11 53) c_ack!109)))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!108)
                 ((_ to_fp 11 53) c_ack!109)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!108)
                                  ((_ to_fp 11 53) c_ack!109)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!108)
                                   ((_ to_fp 11 53) c_ack!109))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!108)
                                   ((_ to_fp 11 53) c_ack!109)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!108)
                           ((_ to_fp 11 53) c_ack!109)))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!108)
                 ((_ to_fp 11 53) c_ack!109)))))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!108)
                  ((_ to_fp 11 53) c_ack!109))
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!108)
                  ((_ to_fp 11 53) c_ack!109)))
  #x4018000000000000))

(check-sat)
(exit)
