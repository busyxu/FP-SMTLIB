(declare-fun c_ack!4627 () (_ BitVec 64))
(declare-fun a_ack!4628 () (_ BitVec 32))
(declare-fun b_ack!4626 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_acos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4627) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!4628 #xffffffff)))
(assert (not (= #xffffffff a_ack!4628)))
(assert (= #x00000000 a_ack!4628))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4627) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!4627) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!4626) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4627) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!4627) ((_ to_fp 11 53) #x3fb999999999999a)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4626) ((_ to_fp 11 53) #x4031000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!4627) ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4626) ((_ to_fp 11 53) #x4014000000000000))))
(assert (fp.leq ((_ to_fp 11 53) c_ack!4627) ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4626) ((_ to_fp 11 53) #x4031000000000000))))
(assert (fp.leq ((_ to_fp 11 53) c_ack!4627) ((_ to_fp 11 53) #x3ff8000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4626) ((_ to_fp 11 53) #x4034000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) #x3ff8000000000000) ((_ to_fp 11 53) c_ack!4627))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!4627) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!4627))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!4627)
                       ((_ to_fp 11 53) c_ack!4627))
               ((_ to_fp 11 53) c_ack!4627))
       ((_ to_fp 11 53) c_ack!4627)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!4627))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!4627)
                       ((_ to_fp 11 53) c_ack!4627))
               ((_ to_fp 11 53) c_ack!4627))
       ((_ to_fp 11 53) c_ack!4627)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4627)
                                   ((_ to_fp 11 53) c_ack!4627)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!4627)
                           ((_ to_fp 11 53) c_ack!4627)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4627)
                                   ((_ to_fp 11 53) c_ack!4627))))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) c_ack!4627)
                 ((_ to_fp 11 53) c_ack!4627)))))
(assert (FPCHECK_FMUL_OVERFLOW (CF_acos c_ack!4627) b_ack!4626))

(check-sat)
(exit)
