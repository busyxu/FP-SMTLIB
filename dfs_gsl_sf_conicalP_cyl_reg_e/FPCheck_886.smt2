(declare-fun c_ack!4636 () (_ BitVec 64))
(declare-fun a_ack!4637 () (_ BitVec 32))
(declare-fun b_ack!4635 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_acos ((_ BitVec 64)) (_ FloatingPoint 11 53))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4636) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!4637 #xffffffff)))
(assert (not (= #xffffffff a_ack!4637)))
(assert (= #x00000000 a_ack!4637))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4636) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!4636) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!4635) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!4636) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!4636) ((_ to_fp 11 53) #x3fb999999999999a)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4635) ((_ to_fp 11 53) #x4031000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!4636) ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4635) ((_ to_fp 11 53) #x4014000000000000))))
(assert (fp.leq ((_ to_fp 11 53) c_ack!4636) ((_ to_fp 11 53) #x3fc999999999999a)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4635) ((_ to_fp 11 53) #x4031000000000000))))
(assert (fp.leq ((_ to_fp 11 53) c_ack!4636) ((_ to_fp 11 53) #x3ff8000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4635) ((_ to_fp 11 53) #x4034000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) #x3ff8000000000000) ((_ to_fp 11 53) c_ack!4636))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!4636) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!4636))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!4636)
                       ((_ to_fp 11 53) c_ack!4636))
               ((_ to_fp 11 53) c_ack!4636))
       ((_ to_fp 11 53) c_ack!4636)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!4636))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!4636)
                       ((_ to_fp 11 53) c_ack!4636))
               ((_ to_fp 11 53) c_ack!4636))
       ((_ to_fp 11 53) c_ack!4636)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4636)
                                   ((_ to_fp 11 53) c_ack!4636)))
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!4636)
                           ((_ to_fp 11 53) c_ack!4636)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!4636)
                                   ((_ to_fp 11 53) c_ack!4636))))))
  (fp.eq a!1
         (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) c_ack!4636)
                 ((_ to_fp 11 53) c_ack!4636)))))
(assert (FPCHECK_FMUL_ACCURACY (CF_acos c_ack!4636) b_ack!4635))

(check-sat)
(exit)
