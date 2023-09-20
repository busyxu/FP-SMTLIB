(declare-fun x1_ack!4970 () (_ BitVec 64))
(declare-fun x0_ack!4974 () (_ BitVec 64))
(declare-fun x2_ack!4971 () (_ BitVec 64))
(declare-fun b_ack!4973 () (_ BitVec 64))
(declare-fun a_ack!4972 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4974) ((_ to_fp 11 53) x1_ack!4970)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4970) ((_ to_fp 11 53) x2_ack!4971)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4970)
                       ((_ to_fp 11 53) x0_ack!4974))
               ((_ to_fp 11 53) x0_ack!4974))
       ((_ to_fp 11 53) x1_ack!4970)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4970)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4970)
                       ((_ to_fp 11 53) x0_ack!4974)))
       ((_ to_fp 11 53) x0_ack!4974)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4971)
                       ((_ to_fp 11 53) x1_ack!4970))
               ((_ to_fp 11 53) x1_ack!4970))
       ((_ to_fp 11 53) x2_ack!4971)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4971)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4971)
                       ((_ to_fp 11 53) x1_ack!4970)))
       ((_ to_fp 11 53) x1_ack!4970)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4970)
                    ((_ to_fp 11 53) x0_ack!4974))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4971)
                    ((_ to_fp 11 53) x1_ack!4970))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4972) ((_ to_fp 11 53) b_ack!4973))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4972) ((_ to_fp 11 53) x0_ack!4974))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4973) ((_ to_fp 11 53) x2_ack!4971))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4972) ((_ to_fp 11 53) b_ack!4973))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4972) ((_ to_fp 11 53) x0_ack!4974))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!4972) ((_ to_fp 11 53) x1_ack!4970)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!4970) ((_ to_fp 11 53) a_ack!4972))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4973) ((_ to_fp 11 53) x1_ack!4970))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!4973) ((_ to_fp 11 53) x2_ack!4971)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4971)
                    ((_ to_fp 11 53) x1_ack!4970))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!4972)
                       ((_ to_fp 11 53) x1_ack!4970))
               ((_ to_fp 11 53) x1_ack!4970))
       ((_ to_fp 11 53) a_ack!4972)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!4972)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!4972)
                       ((_ to_fp 11 53) x1_ack!4970)))
       ((_ to_fp 11 53) x1_ack!4970)))
(assert (FPCHECK_FSUB_ACCURACY b_ack!4973 x1_ack!4970))

(check-sat)
(exit)
