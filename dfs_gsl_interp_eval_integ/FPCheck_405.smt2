(declare-fun x1_ack!4975 () (_ BitVec 64))
(declare-fun x0_ack!4979 () (_ BitVec 64))
(declare-fun x2_ack!4976 () (_ BitVec 64))
(declare-fun b_ack!4978 () (_ BitVec 64))
(declare-fun a_ack!4977 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4979) ((_ to_fp 11 53) x1_ack!4975)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4975) ((_ to_fp 11 53) x2_ack!4976)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4975)
                       ((_ to_fp 11 53) x0_ack!4979))
               ((_ to_fp 11 53) x0_ack!4979))
       ((_ to_fp 11 53) x1_ack!4975)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4975)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4975)
                       ((_ to_fp 11 53) x0_ack!4979)))
       ((_ to_fp 11 53) x0_ack!4979)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4976)
                       ((_ to_fp 11 53) x1_ack!4975))
               ((_ to_fp 11 53) x1_ack!4975))
       ((_ to_fp 11 53) x2_ack!4976)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4976)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4976)
                       ((_ to_fp 11 53) x1_ack!4975)))
       ((_ to_fp 11 53) x1_ack!4975)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4975)
                    ((_ to_fp 11 53) x0_ack!4979))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4976)
                    ((_ to_fp 11 53) x1_ack!4975))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4977) ((_ to_fp 11 53) b_ack!4978))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4977) ((_ to_fp 11 53) x0_ack!4979))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4978) ((_ to_fp 11 53) x2_ack!4976))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4977) ((_ to_fp 11 53) b_ack!4978))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4977) ((_ to_fp 11 53) x0_ack!4979))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!4977) ((_ to_fp 11 53) x1_ack!4975)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!4975) ((_ to_fp 11 53) a_ack!4977))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4978) ((_ to_fp 11 53) x1_ack!4975))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!4978) ((_ to_fp 11 53) x2_ack!4976)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4976)
                    ((_ to_fp 11 53) x1_ack!4975))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!4977)
                       ((_ to_fp 11 53) x1_ack!4975))
               ((_ to_fp 11 53) x1_ack!4975))
       ((_ to_fp 11 53) a_ack!4977)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!4977)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!4977)
                       ((_ to_fp 11 53) x1_ack!4975)))
       ((_ to_fp 11 53) x1_ack!4975)))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!4977)
          ((_ to_fp 11 53) x1_ack!4975))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!4978)
          ((_ to_fp 11 53) x1_ack!4975))))

(check-sat)
(exit)
