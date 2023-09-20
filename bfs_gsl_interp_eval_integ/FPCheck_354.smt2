(declare-fun x1_ack!4438 () (_ BitVec 64))
(declare-fun x0_ack!4442 () (_ BitVec 64))
(declare-fun x2_ack!4439 () (_ BitVec 64))
(declare-fun b_ack!4441 () (_ BitVec 64))
(declare-fun a_ack!4440 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4442) ((_ to_fp 11 53) x1_ack!4438)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4438) ((_ to_fp 11 53) x2_ack!4439)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4438)
                       ((_ to_fp 11 53) x0_ack!4442))
               ((_ to_fp 11 53) x0_ack!4442))
       ((_ to_fp 11 53) x1_ack!4438)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4438)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4438)
                       ((_ to_fp 11 53) x0_ack!4442)))
       ((_ to_fp 11 53) x0_ack!4442)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4439)
                       ((_ to_fp 11 53) x1_ack!4438))
               ((_ to_fp 11 53) x1_ack!4438))
       ((_ to_fp 11 53) x2_ack!4439)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4439)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4439)
                       ((_ to_fp 11 53) x1_ack!4438)))
       ((_ to_fp 11 53) x1_ack!4438)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4438)
                    ((_ to_fp 11 53) x0_ack!4442))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4439)
                    ((_ to_fp 11 53) x1_ack!4438))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4440) ((_ to_fp 11 53) b_ack!4441))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4440) ((_ to_fp 11 53) x0_ack!4442))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4441) ((_ to_fp 11 53) x2_ack!4439))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4440) ((_ to_fp 11 53) b_ack!4441))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4440) ((_ to_fp 11 53) x0_ack!4442))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4440) ((_ to_fp 11 53) x1_ack!4438))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4441) ((_ to_fp 11 53) x0_ack!4442))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4441) ((_ to_fp 11 53) x1_ack!4438))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4438)
                    ((_ to_fp 11 53) x0_ack!4442))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_ACCURACY
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!4440)
                  ((_ to_fp 11 53) x0_ack!4442))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!4440)
                  ((_ to_fp 11 53) x0_ack!4442)))
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!4441)
                  ((_ to_fp 11 53) x0_ack!4442))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!4441)
                  ((_ to_fp 11 53) x0_ack!4442)))))

(check-sat)
(exit)
