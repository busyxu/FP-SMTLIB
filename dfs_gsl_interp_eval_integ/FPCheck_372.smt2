(declare-fun x1_ack!4517 () (_ BitVec 64))
(declare-fun x0_ack!4523 () (_ BitVec 64))
(declare-fun x2_ack!4518 () (_ BitVec 64))
(declare-fun b_ack!4522 () (_ BitVec 64))
(declare-fun a_ack!4521 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!4519 () (_ BitVec 64))
(declare-fun y2_ack!4520 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!4523) ((_ to_fp 11 53) x1_ack!4517)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!4517) ((_ to_fp 11 53) x2_ack!4518)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4517)
                       ((_ to_fp 11 53) x0_ack!4523))
               ((_ to_fp 11 53) x0_ack!4523))
       ((_ to_fp 11 53) x1_ack!4517)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!4517)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!4517)
                       ((_ to_fp 11 53) x0_ack!4523)))
       ((_ to_fp 11 53) x0_ack!4523)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4518)
                       ((_ to_fp 11 53) x1_ack!4517))
               ((_ to_fp 11 53) x1_ack!4517))
       ((_ to_fp 11 53) x2_ack!4518)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!4518)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!4518)
                       ((_ to_fp 11 53) x1_ack!4517)))
       ((_ to_fp 11 53) x1_ack!4517)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!4517)
                    ((_ to_fp 11 53) x0_ack!4523))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4518)
                    ((_ to_fp 11 53) x1_ack!4517))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!4521) ((_ to_fp 11 53) b_ack!4522))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4521) ((_ to_fp 11 53) x0_ack!4523))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!4522) ((_ to_fp 11 53) x2_ack!4518))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!4521) ((_ to_fp 11 53) b_ack!4522))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!4521) ((_ to_fp 11 53) x0_ack!4523))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!4521) ((_ to_fp 11 53) x1_ack!4517)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!4517) ((_ to_fp 11 53) a_ack!4521))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!4522) ((_ to_fp 11 53) x1_ack!4517))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!4522) ((_ to_fp 11 53) x2_ack!4518)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!4518)
                    ((_ to_fp 11 53) x1_ack!4517))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_ZERO
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y2_ack!4520)
          ((_ to_fp 11 53) y1_ack!4519))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!4518)
          ((_ to_fp 11 53) x1_ack!4517))))

(check-sat)
(exit)
