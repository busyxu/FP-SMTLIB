(declare-fun a_ack!2095 () (_ BitVec 64))
(declare-fun b_ack!2094 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.gt ((_ to_fp 11 53) a_ack!2095) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) b_ack!2094) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt ((_ to_fp 11 53) a_ack!2095) ((_ to_fp 11 53) #x4049000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2094) ((_ to_fp 11 53) #x4049000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2095) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2094) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!2095)
                       ((_ to_fp 11 53) b_ack!2094))
               ((_ to_fp 11 53) a_ack!2095))
       ((_ to_fp 11 53) b_ack!2094)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               (fp.add roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!2095)
                       ((_ to_fp 11 53) b_ack!2094))
               ((_ to_fp 11 53) b_ack!2094))
       ((_ to_fp 11 53) a_ack!2095)))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!2095)
                    ((_ to_fp 11 53) b_ack!2094))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!2095) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!2094) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!2095) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2094) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!2095) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.gt ((_ to_fp 11 53) b_ack!2094) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!2095) ((_ to_fp 11 53) b_ack!2094))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!2095) ((_ to_fp 11 53) b_ack!2094)))
(assert (not (fp.lt (fp.div roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!2095)
                    ((_ to_fp 11 53) b_ack!2094))
            ((_ to_fp 11 53) #x3fc999999999999a))))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!2095)
                                  ((_ to_fp 11 53) #x3ff0000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!2095)
                                  ((_ to_fp 11 53) #x4000000000000000)))
                  ((_ to_fp 11 53) #x3f847ae147ae147b))))
  (not a!1)))
(assert (fp.geq ((_ to_fp 11 53) a_ack!2095) ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (FPCHECK_FDIV_UNDERFLOW
  #x40852429b6c30b05
  (fp.add roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!2095)
                  ((_ to_fp 11 53) #x3ff0000000000000))
          ((_ to_fp 11 53) #x3ff0000000000000))))

(check-sat)
(exit)
