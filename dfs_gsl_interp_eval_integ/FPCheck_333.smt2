(declare-fun x1_ack!4027 () (_ BitVec 64))
(declare-fun x0_ack!4031 () (_ BitVec 64))
(declare-fun x2_ack!4028 () (_ BitVec 64))
(declare-fun b_ack!4030 () (_ BitVec 64))
(declare-fun a_ack!4029 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4031) ((_ to_fp 11 53) x1_ack!4027)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4027) ((_ to_fp 11 53) x2_ack!4028)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4027)
                       ((_ to_fp 11 53) x0_ack!4031))
               ((_ to_fp 11 53) x0_ack!4031))
       ((_ to_fp 11 53) x1_ack!4027)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4027)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4027)
                       ((_ to_fp 11 53) x0_ack!4031)))
       ((_ to_fp 11 53) x0_ack!4031)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4028)
                       ((_ to_fp 11 53) x1_ack!4027))
               ((_ to_fp 11 53) x1_ack!4027))
       ((_ to_fp 11 53) x2_ack!4028)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4028)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4028)
                       ((_ to_fp 11 53) x1_ack!4027)))
       ((_ to_fp 11 53) x1_ack!4027)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4027)
                    ((_ to_fp 11 53) x0_ack!4031))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4028)
                    ((_ to_fp 11 53) x1_ack!4027))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4029) ((_ to_fp 11 53) b_ack!4030))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4029) ((_ to_fp 11 53) x0_ack!4031))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4030) ((_ to_fp 11 53) x2_ack!4028))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4029) ((_ to_fp 11 53) b_ack!4030))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4029) ((_ to_fp 11 53) x0_ack!4031))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4029) ((_ to_fp 11 53) x1_ack!4027))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4030) ((_ to_fp 11 53) x0_ack!4031))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4030) ((_ to_fp 11 53) x1_ack!4027))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4027)
                    ((_ to_fp 11 53) x0_ack!4031))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!4030)
          ((_ to_fp 11 53) x0_ack!4031))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!4030)
          ((_ to_fp 11 53) x0_ack!4031))))

(check-sat)
(exit)
