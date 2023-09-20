(declare-fun x1_ack!4664 () (_ BitVec 64))
(declare-fun x0_ack!4668 () (_ BitVec 64))
(declare-fun x2_ack!4665 () (_ BitVec 64))
(declare-fun b_ack!4667 () (_ BitVec 64))
(declare-fun a_ack!4666 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4668) ((_ to_fp 11 53) x1_ack!4664)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4664) ((_ to_fp 11 53) x2_ack!4665)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4664)
                       ((_ to_fp 11 53) x0_ack!4668))
               ((_ to_fp 11 53) x0_ack!4668))
       ((_ to_fp 11 53) x1_ack!4664)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4664)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4664)
                       ((_ to_fp 11 53) x0_ack!4668)))
       ((_ to_fp 11 53) x0_ack!4668)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4665)
                       ((_ to_fp 11 53) x1_ack!4664))
               ((_ to_fp 11 53) x1_ack!4664))
       ((_ to_fp 11 53) x2_ack!4665)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4665)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4665)
                       ((_ to_fp 11 53) x1_ack!4664)))
       ((_ to_fp 11 53) x1_ack!4664)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4664)
                    ((_ to_fp 11 53) x0_ack!4668))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4665)
                    ((_ to_fp 11 53) x1_ack!4664))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4666) ((_ to_fp 11 53) b_ack!4667))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4666) ((_ to_fp 11 53) x0_ack!4668))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4667) ((_ to_fp 11 53) x2_ack!4665))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4666) ((_ to_fp 11 53) b_ack!4667))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4666) ((_ to_fp 11 53) x0_ack!4668))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!4666) ((_ to_fp 11 53) x1_ack!4664))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4667) ((_ to_fp 11 53) x0_ack!4668))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!4667) ((_ to_fp 11 53) x1_ack!4664))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4664)
                    ((_ to_fp 11 53) x0_ack!4668))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!4667)
          ((_ to_fp 11 53) x0_ack!4668))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!4667)
          ((_ to_fp 11 53) x0_ack!4668))))

(check-sat)
(exit)
