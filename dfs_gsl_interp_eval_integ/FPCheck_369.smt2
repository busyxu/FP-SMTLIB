(declare-fun x1_ack!4482 () (_ BitVec 64))
(declare-fun x0_ack!4488 () (_ BitVec 64))
(declare-fun x2_ack!4483 () (_ BitVec 64))
(declare-fun b_ack!4487 () (_ BitVec 64))
(declare-fun a_ack!4486 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!4484 () (_ BitVec 64))
(declare-fun y2_ack!4485 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4488) ((_ to_fp 11 53) x1_ack!4482)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4482) ((_ to_fp 11 53) x2_ack!4483)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4482)
                       ((_ to_fp 11 53) x0_ack!4488))
               ((_ to_fp 11 53) x0_ack!4488))
       ((_ to_fp 11 53) x1_ack!4482)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4482)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4482)
                       ((_ to_fp 11 53) x0_ack!4488)))
       ((_ to_fp 11 53) x0_ack!4488)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4483)
                       ((_ to_fp 11 53) x1_ack!4482))
               ((_ to_fp 11 53) x1_ack!4482))
       ((_ to_fp 11 53) x2_ack!4483)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4483)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4483)
                       ((_ to_fp 11 53) x1_ack!4482)))
       ((_ to_fp 11 53) x1_ack!4482)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4482)
                    ((_ to_fp 11 53) x0_ack!4488))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4483)
                    ((_ to_fp 11 53) x1_ack!4482))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4486) ((_ to_fp 11 53) b_ack!4487))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4486) ((_ to_fp 11 53) x0_ack!4488))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4487) ((_ to_fp 11 53) x2_ack!4483))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4486) ((_ to_fp 11 53) b_ack!4487))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4486) ((_ to_fp 11 53) x0_ack!4488))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!4486) ((_ to_fp 11 53) x1_ack!4482)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!4482) ((_ to_fp 11 53) a_ack!4486))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4487) ((_ to_fp 11 53) x1_ack!4482))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!4487) ((_ to_fp 11 53) x2_ack!4483)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4483)
                    ((_ to_fp 11 53) x1_ack!4482))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y2_ack!4485)
          ((_ to_fp 11 53) y1_ack!4484))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!4483)
          ((_ to_fp 11 53) x1_ack!4482))))

(check-sat)
(exit)
