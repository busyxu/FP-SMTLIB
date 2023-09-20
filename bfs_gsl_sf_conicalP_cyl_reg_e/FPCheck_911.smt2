(declare-fun c_ack!3870 () (_ BitVec 64))
(declare-fun a_ack!3871 () (_ BitVec 32))
(declare-fun b_ack!3869 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!3870) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!3871 #xffffffff)))
(assert (not (= #xffffffff a_ack!3871)))
(assert (= #x00000000 a_ack!3871))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!3870) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!3870) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!3869) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!3870) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!3870) ((_ to_fp 11 53) #x3fb999999999999a)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3869) ((_ to_fp 11 53) #x4031000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!3870) ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3869) ((_ to_fp 11 53) #x4014000000000000))))
(assert (fp.leq ((_ to_fp 11 53) c_ack!3870) ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3869) ((_ to_fp 11 53) #x4031000000000000))))
(assert (fp.leq ((_ to_fp 11 53) c_ack!3870) ((_ to_fp 11 53) #x3ff8000000000000)))
(assert (fp.lt ((_ to_fp 11 53) b_ack!3869) ((_ to_fp 11 53) #x4034000000000000)))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) c_ack!3870))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (not (fp.geq a!1 ((_ to_fp 11 53) #x3ff0000000000000)))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) c_ack!3870))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3fd0000000000000)))))
(assert (fp.gt (fp.div roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) c_ack!3870))
               ((_ to_fp 11 53) #x4000000000000000))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fd0000000000000)
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!3869)
                  ((_ to_fp 11 53) b_ack!3869)))
  #x3ff0000000000000))

(check-sat)
(exit)
