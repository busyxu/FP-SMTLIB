(declare-fun x1_ack!5974 () (_ BitVec 64))
(declare-fun x0_ack!5978 () (_ BitVec 64))
(declare-fun x2_ack!5975 () (_ BitVec 64))
(declare-fun b_ack!5977 () (_ BitVec 64))
(declare-fun a_ack!5976 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5978) ((_ to_fp 11 53) x1_ack!5974)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5974) ((_ to_fp 11 53) x2_ack!5975)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5974)
                       ((_ to_fp 11 53) x0_ack!5978))
               ((_ to_fp 11 53) x0_ack!5978))
       ((_ to_fp 11 53) x1_ack!5974)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5974)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5974)
                       ((_ to_fp 11 53) x0_ack!5978)))
       ((_ to_fp 11 53) x0_ack!5978)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5975)
                       ((_ to_fp 11 53) x1_ack!5974))
               ((_ to_fp 11 53) x1_ack!5974))
       ((_ to_fp 11 53) x2_ack!5975)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5975)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5975)
                       ((_ to_fp 11 53) x1_ack!5974)))
       ((_ to_fp 11 53) x1_ack!5974)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5974)
                    ((_ to_fp 11 53) x0_ack!5978))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5975)
                    ((_ to_fp 11 53) x1_ack!5974))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5976) ((_ to_fp 11 53) b_ack!5977))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5976) ((_ to_fp 11 53) x0_ack!5978))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5977) ((_ to_fp 11 53) x2_ack!5975))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5976) ((_ to_fp 11 53) b_ack!5977))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5976) ((_ to_fp 11 53) x0_ack!5978))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!5976) ((_ to_fp 11 53) x1_ack!5974))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5977) ((_ to_fp 11 53) x0_ack!5978))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5977) ((_ to_fp 11 53) x1_ack!5974)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5974) ((_ to_fp 11 53) b_ack!5977))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5974)
                    ((_ to_fp 11 53) x0_ack!5978))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!5976)
          ((_ to_fp 11 53) x0_ack!5978))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!5974)
          ((_ to_fp 11 53) x0_ack!5978))))

(check-sat)
(exit)
